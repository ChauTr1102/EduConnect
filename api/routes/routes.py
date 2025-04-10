from api.routes import *

@router.get("/")
def read_root():
    return {
        'Hello This is EduConnect! Nice to meet you!'
    }

@router.post("/test")
async def test(test: test):
    return f"Received {test.user_name}, {test.password}"
