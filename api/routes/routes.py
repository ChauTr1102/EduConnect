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

@router.post("/recommender/")
async def recommender(student_request: StudentRequest):
    recommender = RecommenderSystem(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    teacher_profile = sql_db.get_teachers_profile()
    prompt_recommender = recommender.prompt_recommender(student_request.student_request, teacher_profile)
    response = await recommender.send_message_gemini(prompt_recommender)
    result = extract_clean_json(response)
    return result

