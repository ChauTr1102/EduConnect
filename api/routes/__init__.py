from fastapi import UploadFile, File, Form, APIRouter
from pydantic import BaseModel
from fastapi.responses import StreamingResponse
from api.database.database import SQLDatabase
from api.services.recommender_system import RecommenderSystem
from api.services.chatbot import ChatBot

import pandas as pd
import os
import shutil
import asyncio
from dotenv import load_dotenv
import re
import json

load_dotenv()


router = APIRouter()
sql_db = SQLDatabase()


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
    student_request: str


class user_and_pass(BaseModel):
    user_name: str
    password: str


class Message(BaseModel):
    message: str


class MessageWithTeacher(BaseModel):
    student_question: str


class Teacher(BaseModel):
    teacher_id: str
    name: str
    email: str
    reason: str



