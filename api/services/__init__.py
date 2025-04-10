from api.config import *

# For chatbot
import ast
from langchain_openai import ChatOpenAI
from langchain_google_genai import ChatGoogleGenerativeAI
from langchain_openai import OpenAIEmbeddings
from langchain.prompts import ChatPromptTemplate, MessagesPlaceholder
from pydantic import BaseModel
from dotenv import load_dotenv, find_dotenv
from langchain.callbacks import AsyncIteratorCallbackHandler


import asyncio
from typing import AsyncIterable

# For vectorstore_faiss
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import (
    PyPDFLoader,
    DirectoryLoader,
    TextLoader,
    CSVLoader,
    UnstructuredWordDocumentLoader
)
from langchain_community.vectorstores import FAISS
import os
from fastapi import UploadFile, File, Form
import shutil
from langchain.retrievers.ensemble import EnsembleRetriever
from langchain_community.retrievers import BM25Retriever
from langchain_experimental.text_splitter import SemanticChunker
import tiktoken


from api.database.database import SQLDatabase