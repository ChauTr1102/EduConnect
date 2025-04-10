from api.routes import *

@router.get("/")
def read_root():
    return {
        'Hello This is EduConnect! Nice to meet you!'
    }

@router.post("/check_login")
async def check_login(test: user_and_pass):
    result = sql_db.check_login(test.user_name, test.password)
    return result
