from fastapi import FastAPI
from api.routes.routes import router
import uvicorn
from fastapi.middleware.cors import CORSMiddleware


app = FastAPI(
    title="EduConnect",
    description="Hello! This is EduConnect!!!"
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Hoặc chỉ định frontend domain cụ thể
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
# Include tất cả các endpoint từ router
app.include_router(router)

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
