from fastapi import UploadFile, File, Form, APIRouter
from pydantic import BaseModel
from fastapi.responses import StreamingResponse
from api.database.database import SQLDatabase
from api.services.recommender_system import RecommenderSystem
import pandas as pd
import os
import shutil
import asyncio
from dotenv import load_dotenv

load_dotenv()


router = APIRouter()
sql_db = SQLDatabase()


class StudentRequest(BaseModel):
    student_request: str

class user_and_pass(BaseModel):
    user_name: str
    password: str