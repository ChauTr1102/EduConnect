from fastapi import UploadFile, File, Form, APIRouter, WebSocket, WebSocketDisconnect, HTTPException, Request, status
from payos import PayOS, ItemData, PaymentData
from pydantic import BaseModel
from fastapi.responses import StreamingResponse, JSONResponse
from api.database.database import SQLDatabase
from api.services.recommender_system import RecommenderSystem
from api.services.chatbot import ChatBot
from typing import Dict, List
import hashlib
import uuid

import pandas as pd
import os
import shutil
import asyncio
from dotenv import load_dotenv
import re
import json
import datetime
import secrets
import random
load_dotenv()
import time
import logging
import hmac
import pytz

router = APIRouter()
sql_db = SQLDatabase()
payos = PayOS(os.getenv("CLIENT_ID"), os.getenv("PAYOS_API_KEY"), os.getenv("CHECKSUM_KEY"))

def extract_clean_json(response_text: str):
    # Loại bỏ markdown code block như ```json ... ```
    cleaned = re.sub(r"```json|```", "", response_text).strip()

    # Parse thành object JSON (list hoặc dict), sau đó dump lại cho đúng format
    try:
        parsed_json = json.loads(cleaned)
        return json.dumps(parsed_json, ensure_ascii=False)
    except json.JSONDecodeError as e:
        print("Failed to parse JSON:", e)
        return None


class StudentRequest(BaseModel):
    user_id: str
    student_request: str


class user_and_pass(BaseModel):
    user_name: str
    password: str


class Message(BaseModel):
    message: str


class TeacherInfo(BaseModel):
    teacher_id: str
    name: str
    gender: str
    birthdate: str
    email: str
    address: str
    introduction: str
    degree: str
    experience: str
    teaching_style: str


class MessageWithTeacher(BaseModel):
    student_question: str
    teacher_info: str


class Teacher(BaseModel):
    teacher_id: str
    name: str
    email: str
    reason: str


class SuitableTeacher(BaseModel):
    post_id: str


class TeacherID(BaseModel):
    teacher_id: str


class LoginRequest(BaseModel):
    username: str
    password: str


class StartConversationRequest(BaseModel):
    user1: str
    user2: str


class PaymentInfo(BaseModel):
    user_id: str
    amount: int
    message: str

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

PAYOS_WEBHOOK_SECRET_KEY = os.getenv("CHECKSUM_KEY")
if not PAYOS_WEBHOOK_SECRET_KEY:
    logger.error("PAYOS_WEBHOOK_SECRET_KEY not found in environment variables. Webhook verification will fail.")
    # raise ValueError("PAYOS_WEBHOOK_SECRET_KEY must be set in environment variables.")


# --- Hàm xác minh chữ ký Webhook từ PayOS ---
def verify_payos_webhook(request_body_bytes: bytes, signature: str, secret_key: str) -> bool:
    """
    Xác minh chữ ký của webhook từ PayOS.
    Tham số:
    - request_body_bytes: Nội dung JSON của request (dạng bytes).
    - signature: Chữ ký nhận được trong header 'X-Payos-Signature'.
    - secret_key: Webhook Secret Key của bạn từ PayOS.
    Trả về:
    - True nếu chữ ký hợp lệ, False nếu không.
    """
    try:
        # PayOS yêu cầu chuỗi JSON phải được sắp xếp theo khóa để tính toán chữ ký
        # Tải JSON, sau đó sắp xếp lại và dumps thành chuỗi để tính toán
        data = json.loads(request_body_bytes.decode('utf-8'))
        sorted_json_string = json.dumps(data, separators=(',', ':'), sort_keys=True)

        # Tạo HMAC SHA256 signature
        hashed_payload = hmac.new(
            secret_key.encode('utf-8'),
            sorted_json_string.encode('utf-8'),
            hashlib.sha256
        ).hexdigest()

        # So sánh chữ ký tính toán được với chữ ký nhận được
        return hmac.compare_digest(hashed_payload, signature)
    except Exception as e:
        logger.error(f"Error verifying webhook signature: {e}")
        return False
