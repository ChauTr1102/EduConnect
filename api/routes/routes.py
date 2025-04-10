from api.routes import *

@router.get("/")
def read_root():
    return {
        'Hello This is EduConnect! Nice to meet you!'
    }

@router.post("/recommender/")
async def recommender(student_request: StudentRequest):
    recommender = RecommenderSystem(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    teacher_profile = sql_db.get_teachers_profile()
    prompt_recommender = recommender.prompt_recommender(student_request.student_request, teacher_profile)
    result = await recommender.send_message_gemini(prompt_recommender)
    return result

