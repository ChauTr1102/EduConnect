import os

from api.routes import *


@router.get("/")
def read_root():
    return {
        'Hello This is EduConnect! Nice to meet you!'
    }


@router.post("/check_login/")
async def check_login(test: user_and_pass):
    result = sql_db.check_login(test.user_name, test.password)
    return result


@router.post("/recommender/")
async def recommender(student_request: StudentRequest):
    recommender = RecommenderSystem(gemini_apikey=os.getenv("GEMINI_API_KEY"))
    # insert vào bảng post nè
    post_id = "po" + datetime.now().strftime("%Y%m%d%H%m") + secrets.token_hex(3)
    sql_db.upload_post(post_id, student_request.user_id, student_request.student_request, status='private')
    # lấy profile giáo viên
    teacher_profile = sql_db.get_teachers_profile()

    prompt_recommender = recommender.prompt_recommender(student_request.student_request, teacher_profile)
    response = await recommender.send_message_gemini(prompt_recommender)

    result = extract_clean_json(response)
    # Chuyển string thành list of dict
    parsed_result = json.loads(result)

    for i in parsed_result:
        sql_db.insert_suitable_teacher(post_id, i["teacher_id"], i["name"], i["email"], i["reason"])
    # Lưu lại thành file JSON đẹp
    # with open("suitable_teacher.json", "w", encoding="utf-8") as f:
    #     json.dump(parsed_result, f, indent=4, ensure_ascii=False)

    return post_id


@router.post("/get_suitable_teacher/")
async def get_suitable_teacher(post_id: SuitableTeacher):
    suitable_teachers = sql_db.get_suitable_teacher(post_id.post_id)
    keys = ["post_id", "teacher_id", "name", "email", "reason"]
    formated_suitable_teachers = [dict(zip(keys, item)) for item in suitable_teachers]
    return formated_suitable_teachers


@router.post("/chat_get_answer/")
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
    # with open("chosen_teacher.json", "r", encoding="utf-8") as f:
    #     teacher_profile_dict = json.load(f)
    # teacher_id = teacher_profile_dict["teacher_id"]
    # teacher_profile_str = json.dumps(teacher_profile_dict, indent=4, ensure_ascii=False)
    # try:
    #     with open(f"./HistoryChat/cv_{teacher_id}.json", "r", encoding="utf-8") as f:
    #         history = json.load(f)
    # except FileNotFoundError:
    #     history = []
    chat_prompt = chatbot.prompt_chat_with_teacher(message.teacher_info, message.student_question, history)
    response = await chatbot.send_message_gemini(chat_prompt)

    # history.append({"role": "user", "content": message.student_question})
    # history.append({"role": "teacher", "content": response})

    # with open(f"./HistoryChat/cv_{teacher_id}.json", "w", encoding="utf-8") as f:
    #     json.dump(history, f, ensure_ascii=False, indent=4)
    return response


@router.post("/get_detail_teacher_info/")
async def get_detail_teacher_info(teacher: TeacherID):
    teacher_info = sql_db.get_teacher_info(teacher.teacher_id)
    keys = ["teacher_id", "name", "gender", "birthdate", "email", "address", "introduction", "degree", "experience",
            "teaching_style"]
    formated_teacher_info = [dict(zip(keys, item)) for item in teacher_info]
    return formated_teacher_info


@router.post("/return_user_posts/")
async def return_user_posts():
    # Retrieve posts from the database
    posts = sql_db.get_posts_with_usernames()
    # Prepare formatted posts
    formated_posts = []
    for post in posts:
        # Assume post is a tuple or list with [post_id, username, content]
        post_id, username, content = post[:3]
        # Generate a random time between 2 and 14 hours ago
        time_ago = random.uniform(2, 14)
        # Construct post dictionary with additional details
        formatted_post = {
            "post_id": str(post_id),
            "username": username,
            "avatar": f"{username}.png",  # Assuming avatar is username-based
            "content": content,
            "time_posted": time_ago
        }
        formated_posts.append(formatted_post)
    return formated_posts