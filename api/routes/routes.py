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
    chatbot = ChatBot(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    try:
        with open("./HistoryChat/history_chat_bot.json", "r", encoding="utf-8") as f:
            history = json.load(f)
    except FileNotFoundError:
        history = []
    prompt = chatbot.prompt_chat_with_bot(history=history[-6::], user_question=message.message)
    response = await chatbot.send_message_gemini(prompt)

    history.append({"role": "user", "content": message.message})
    history.append({"role": "bot", "content": response})

    with open("./HistoryChat/history_chat_bot.json", "w", encoding="utf-8") as f:
        json.dump(history, f, ensure_ascii=False, indent=4)
    return response


@router.post("/save_chosen_teacher/")
async def save_chosen_teacher(teacher: Teacher):
    with open("chosen_teacher.json", "w", encoding="utf-8") as f:
        json.dump(teacher.dict(), f, indent=4, ensure_ascii=False)


@router.post("/chat_with_teacher/")
async def send_message_with_teacher(message: MessageWithTeacher):
    chatbot = ChatBot(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    with open("chosen_teacher.json", "r", encoding="utf-8") as f:
        teacher_profile_dict = json.load(f)
    teacher_id = teacher_profile_dict["teacher_id"]
    teacher_profile_str = json.dumps(teacher_profile_dict, indent=4, ensure_ascii=False)
    try:
        with open(f"./HistoryChat/cv_{teacher_id}.json", "r", encoding="utf-8") as f:
            history = json.load(f)
    except FileNotFoundError:
        history = []
    chat_prompt = chatbot.prompt_chat_with_teacher(teacher_profile_str, message.student_question, history)
    response = await chatbot.send_message_gemini(chat_prompt)

    history.append({"role": "user", "content": message.student_question})
    history.append({"role": "teacher", "content": response})

    with open(f"./HistoryChat/cv_{teacher_id}.json", "w", encoding="utf-8") as f:
        json.dump(history, f, ensure_ascii=False, indent=4)
    return response



