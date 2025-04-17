import os

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

    # Chuyển string thành list of dict
    parsed_result = json.loads(result)

    # Lưu lại thành file JSON đẹp
    with open("suitable_teacher.json", "w", encoding="utf-8") as f:
        json.dump(parsed_result, f, indent=4, ensure_ascii=False)

    return result


@router.post("/chat_get-answer/")
async def send_message(message: Message):
    recommender = RecommenderSystem(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    response = await recommender.send_message_gemini(message.message)
    return response


@router.post("/save_chosen_teacher")
async def save_chosen_teacher(teacher: Teacher):
    with open("chosen_teacher.json", "w", encoding="utf-8") as f:
        json.dump(teacher.dict(), f, indent=4, ensure_ascii=False)


@router.post("/chat_with_teacher/")
async def send_message_with_teacher(message: MessageWithTeacher):
    chatbot = ChatBot(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    teacher_profile = None #[sửa lấy teacher profile ở đây]
    chat_prompt = chatbot.prompt_chat_with_teacher(teacher_profile, message.student_question)
    response = await chatbot.send_message_gemini(chat_prompt)



