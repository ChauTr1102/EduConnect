from fastapi import UploadFile, File, Form, APIRouter
from pydantic import BaseModel
from fastapi.responses import StreamingResponse
from api.database.database import SQLDatabase
import pandas as pd
import os
import shutil
import asyncio

router = APIRouter()


class test(BaseModel):
    user_name: str
    password: str