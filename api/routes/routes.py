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
    post_id = "po" + datetime.datetime.now().strftime("%Y%m%d%H%m") + secrets.token_hex(3)
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
    # try:
    #     with open("./HistoryChat/history_chat_bot.json", "r", encoding="utf-8") as f:
    #         history = json.load(f)
    # except FileNotFoundError:
    #     history = []
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
    history = []
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


@router.get("/return_user_posts/") # <-- CHANGE HERE
async def return_user_posts():
    # Retrieve posts from the database
    posts = sql_db.get_posts_with_usernames()
    # Prepare formatted posts
    formated_posts = []
    for post in posts:
        # Assume post is a tuple or list with [post_id, username, content]
        post_id, username, content = post[:3] 
        # Get avatar path - ensure this logic works
        random_number = random.randint(1, 20)
        avatar_path = f"images/images/{random_number}.png" # Example path, adjust as needed

        formatted_post = {
            # Keys should match what JS expects OR adjust JS mapping
            "id": str(post_id),       # Match JS 'id'
            "user": username,         # Match JS 'user'
            "avatar": avatar_path,    # Match JS 'avatar'
            "content": content,       # Match JS 'content'
            "time": f"{random.uniform(1, 10):.0f} hours ago" # Match JS 'time', simplified example
        }
        formated_posts.append(formatted_post)
    return formated_posts # FastAPI automatically converts list of dicts to JSON



# def get_connection():
#     return psycopg2.connect(
#         dbname="Educonnect",
#         user="postgres",
#         password="12345678",
#         host="localhost",
#         port=5432
#     )

class ConnectionManager:
    def __init__(self):
        self.active_conversations: Dict[str, List[WebSocket]] = {}
        self.user_sockets: Dict[str, List[WebSocket]] = {}

    async def connect(self, conversation_id: str, username: str, websocket: WebSocket):
        await websocket.accept()
        # for messages
        if conversation_id not in self.active_conversations:
            self.active_conversations[conversation_id] = []
        self.active_conversations[conversation_id].append(websocket)
        # for conversation push
        if username not in self.user_sockets:
            self.user_sockets[username] = []
        self.user_sockets[username].append(websocket)

    def disconnect(self, conversation_id: str, username: str, websocket: WebSocket):
        if conversation_id in self.active_conversations:
            self.active_conversations[conversation_id].remove(websocket)
        if username in self.user_sockets:
            self.user_sockets[username].remove(websocket)

    async def broadcast_message(self, conversation_id: str, message: dict):
        for connection in self.active_conversations.get(conversation_id, []):
            await connection.send_json(message)

    async def notify_user(self, username: str, payload: dict):
        for conn in self.user_sockets.get(username, []):
            await conn.send_json(payload)


manager = ConnectionManager()

# @router.post("/check_login")
# def check_login(req: LoginRequest):
#     # conn = get_connection()
#     # cur = conn.cursor()
#
#     sql_db.cur.execute("SELECT user_id, password FROM users WHERE username = %s", (req.username,))
#     row = sql_db.cur.fetchone()
#     # sql_db.conn.close()
#     if row and row[1] == req.password:  # hashlib.sha256(req.password.encode()).hexdigest():
#         return {"success": True, "user_id": row[0]}
#     return {"success": False}, 401


@router.get("/search_users")
def search_users(keyword: str, exclude: str):
    # conn = get_connection()
    # cur = conn.cursor()
    sql_db.cur.execute("""
        SELECT username, name, user_id, avatar_url FROM users
        WHERE user_id != %s AND (username ILIKE %s OR name ILIKE %s)
        LIMIT 20
    """, (exclude, f"%{keyword}%", f"%{keyword}%"))
    results = sql_db.cur.fetchall()
    # conn.close()
    return [{
        "username": r[0],
        "name": r[1],
        "user_id": r[2],
        "avatar_url": r[3]
    } for r in results]

@router.post("/start_conversation")
async def start_conversation(data: StartConversationRequest):
    user1 = data.user1
    user2 = data.user2
    # conn = get_connection()
    # cur = conn.cursor()
    # Check if conversation already exists
    sql_db.cur.execute("""
        SELECT c.conversation_id
        FROM conversations c
        JOIN participants_conversation p1 ON c.conversation_id = p1.conversation_id
        JOIN participants_conversation p2 ON c.conversation_id = p2.conversation_id
        WHERE p1.user_id = %s AND p2.user_id = %s
        GROUP BY c.conversation_id
        HAVING COUNT(DISTINCT p1.user_id || p2.user_id) = 1
    """, (user1, user2))
    row = sql_db.cur.fetchone()
    if row:
        conv_id = row[0]
    else:
        # Create new conversation
        conv_id = "conv_" + str(uuid.uuid4())[:8]
        conv_name = f"Chat: {user1}, {user2}"
        sql_db.cur.execute("INSERT INTO conversations (conversation_id, conversation_name) VALUES (%s, %s)",
                    (conv_id, conv_name))
        for uid in (user1, user2):
            sql_db.cur.execute("INSERT INTO participants_conversation (conversation_id, user_id) VALUES (%s, %s)",
                                (conv_id, uid))
        # conn.commit()
        # Notify user2 if online
        import asyncio
        await manager.notify_user(user2, {
            "type": "new_conversation",
            "conversation_id": conv_id,
            "conversation_name": conv_name
        })
    # conn.close()
    return {"conversation_id": conv_id}


@router.get("/conversations")
def get_conversations(user: str):
    # conn = get_connection()
    # cur = conn.cursor()
    sql_db.cur.execute("""
        SELECT 
            c.conversation_id,
            u2.username,
            u2.name,
            u2.avatar_url
        FROM conversations c
        JOIN participants_conversation p1 ON c.conversation_id = p1.conversation_id
        JOIN users u1 ON p1.user_id = u1.user_id
        JOIN participants_conversation p2 ON c.conversation_id = p2.conversation_id
        JOIN users u2 ON p2.user_id = u2.user_id
        WHERE u1.user_id = %s AND u2.user_id != %s
    """, (user, user))
    rows = sql_db.cur.fetchall()
    # conn.close()
    return [{
        "id": r[0],
        "other_username": r[1],
        "other_name": r[2],
        "avatar_url": r[3]
    } for r in rows]


@router.get("/messages")
def get_messages(conversation_id: str):
    sql_db.cur.execute("""
        SELECT m.sender_id, m.message_text, m.created_at
        FROM messages m
        WHERE conversation_id = %s
        ORDER BY m.created_at ASC
    """, (conversation_id,))
    rows = sql_db.cur.fetchall()
    return [{"sender": row[0], "message": row[1], "created_at": str(row[2])} for row in rows]



@router.websocket("/ws/user/{user_id}")
async def user_websocket(websocket: WebSocket, user_id: str):
    await websocket.accept()

    if user_id not in manager.user_sockets:
        manager.user_sockets[user_id] = []
    manager.user_sockets[user_id].append(websocket)

    try:
        while True:
            data = await websocket.receive_json()
            msg_type = data.get("type")
            if msg_type == "chat":
                conversation_id = data.get("conversation_id")
                message_text = data.get("message")
                if not conversation_id or not message_text:
                    continue

                # conn = get_connection()
                # cur = conn.cursor()

                # Ghi vào bảng messages
                sql_db.cur.execute("""
                    INSERT INTO messages (conversation_id, sender_id, message_text, created_at)
                    VALUES (%s, %s, %s, %s)
                """, (conversation_id, user_id, message_text, datetime.datetime.now(datetime.timezone.utc)))
                # conn.commit()

                # Lấy danh sách participant usernames (ngoại trừ chính người gửi)
                sql_db.cur.execute("""
                    SELECT u.user_id, u.username, u.name
                    FROM participants_conversation pc
                    JOIN users u ON pc.user_id = u.user_id
                    WHERE pc.conversation_id = %s
                """, (conversation_id,))
                rows = sql_db.cur.fetchall()
                participants = [(r[0], r[1], r[2]) for r in rows if r[0] != user_id]
                username_map = {r[0]: r[1] for r in rows}
                name_map = {r[0]: r[2] for r in rows}

                # Tên cuộc trò chuyện, bạn có thể load từ DB nếu cần
                conversation_name = f"Chat with {', '.join([p[2] for p in participants])}"

                # conn.close()

                # Gửi đến các participant
                for pid, uname, _ in participants:
                    # Gửi tin nhắn
                    await manager.notify_user(pid, {
                        "type": "chat",
                        "conversation_id": conversation_id,
                        "sender": user_id,
                        "message": message_text,
                        "created_at": str(datetime.datetime.now())
                    })

                    # Gửi "new_conversation"
                    await manager.notify_user(pid, {
                        "type": "new_conversation",
                        "conversation_id": conversation_id,
                        "conversation_name": conversation_name
                    })

                # Gửi về cho chính người gửi
                await websocket.send_json({
                    "type": "chat",
                    "conversation_id": conversation_id,
                    "sender": user_id,
                    "message": message_text,
                    "created_at": str(datetime.datetime.now())
                })


    except WebSocketDisconnect:
        if websocket in manager.user_sockets.get(user_id, []):
            manager.user_sockets[user_id].remove(websocket)


@router.get("/check_username")
async def check_username(username: str):
    exists = sql_db.check_username_exists(username)
    return {"exists": exists}


@router.get("/check_email")
async def check_email(email: EmailStr):
    exists = sql_db.check_email_exists(email)
    return {"exists": exists}


@router.post("/register_student")
async def register_student(student: StudentRegisterRequest):
    # Kiểm tra username và email
    if sql_db.check_username_exists(student.username):
        raise HTTPException(status_code=400, detail="Username already exists")

    if sql_db.check_email_exists(student.email):
        raise HTTPException(status_code=400, detail="Email already exists")

    try:
        # Chuyển Pydantic model thành dict
        student_data = student.dict()
        user_id = sql_db.register_student(student_data)

        return {
            "success": True,
            "user_id": user_id,
            "message": "Registration successful"
        }
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Registration failed: {str(e)}"
        )


@router.get("/get_user_balance")
async def get_user_balance(user_id:str):
    user_balance = sql_db.get_user_balance(user_id)
    return user_balance


# Deposit money
@router.post("/create-payment-link")
async def create_payment_link(payment_detail: PaymentInfo):
    try:
        # Thiết lập thông tin mặt hàng
        order_id = int(time.time())
        payment_data = PaymentData(
            orderCode=order_id,
            amount=payment_detail.amount,
            description=payment_detail.message,
            buyerName=payment_detail.user_id,
            # items=[item],
            cancelUrl=f"https://educonnect.id.vn/cancel",
            returnUrl=f"https://educonnect.id.vn/success",
            expiredAt=int(time.time()) + 900
        )
        payment_link_response = payos.createPaymentLink(payment_data)
        sql_db.insert_payment_info(payment_detail.user_id, order_id, payment_detail.amount, payment_detail.message,
                                   payment_link_response.paymentLinkId)
    except Exception as e:
        # Trả về lỗi nếu gặp vấn đề
        raise HTTPException(status_code=500, detail=str(e))

    # Redirect học viên sang link thanh toán của PayOS
    # return RedirectResponse(payment_link_response.checkoutUrl)
    return JSONResponse({"checkoutUrl": payment_link_response.checkoutUrl})

# --- Endpoint xử lý Webhook ---
@router.post("/payos-webhook")
async def handle_payos_webhook(request: Request):
    logger.info("Received PayOS webhook.")

    signature = request.headers.get("X-Payos-Signature")
    if not signature:
        logger.warning("Webhook received without X-Payos-Signature header. (DEBUG MODE: Allowing for now)")
        # TẠM THỜI: THAY VÌ raise HTTPException, HÃY TIẾP TỤC ĐỂ DEBUG CÁC PHẦN SAU
        # TRÊN PRODUCTION, BẠN PHẢI raise HTTPException Ở ĐÂY!
        # raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Missing X-Payos-Signature header")
    else:
        request_body_bytes = await request.body()
        if not verify_payos_webhook(request_body_bytes, signature, PAYOS_WEBHOOK_SECRET_KEY):
            logger.warning("Webhook signature verification failed.")
            raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="Invalid signature")

    # Nếu không có signature, bạn vẫn cần đọc body để payload không bị trống
    # Do đó, đưa request_body_bytes = await request.body() lên đầu hoặc xử lý riêng
    # Cách tốt nhất là luôn đọc body trước để có thể pass vào verify_payos_webhook
    request_body_bytes = await request.body()  # Đảm bảo dòng này luôn được gọi

    # Nếu bạn quyết định tạm bỏ qua lỗi 401 khi không có signature trong debug,
    # thì logic xác minh chữ ký (verify_payos_webhook) chỉ nên được gọi khi signature tồn tại.
    if signature:  # Chỉ xác minh nếu có signature
        if not verify_payos_webhook(request_body_bytes, signature, PAYOS_WEBHOOK_SECRET_KEY):
            logger.warning("Webhook signature verification failed.")
            raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="Invalid signature")
    else:
        # Nếu không có signature (chỉ trong debug), bạn có thể ghi log và vẫn cố gắng xử lý payload
        logger.warning("No X-Payos-Signature header found. Proceeding without signature verification (DEBUG ONLY).")
        # Hoặc bạn có thể raise một lỗi khác để phân biệt webhook test/không có signature với webhook thật bị lỗi signature.
        # Ví dụ: raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Missing signature for testing")

    try:
        payload = json.loads(request_body_bytes.decode('utf-8'))
        logger.info(f"Webhook payload: {payload}")

        # Lấy thông tin từ trường "data" trong payload chính
        data = payload.get("data")
        # Mã lỗi của giao dịch (level cao nhất) - không phải code trong data
        top_level_code = payload.get("code")
        top_level_desc = payload.get("desc")

        if not data:
            logger.warning("Webhook payload 'data' field is missing.")
            return JSONResponse(content={"message": "No data in payload"}, status_code=status.HTTP_200_OK)

        # Trích xuất các trường từ 'data' theo tài liệu bạn cung cấp
        order_code = data.get("orderCode")
        amount = data.get("amount")  # Số tiền từ webhook
        description = data.get("description")
        payment_link_id = data.get("paymentLinkId")
        customer_bank_name = data.get("counterAccountBankName")
        customer_account_name = data.get("counterAccountName")
        customer_account_number = data.get("counterAccountNumber")

        # Chuyển đổi transactionDateTime sang đối tượng datetime có múi giờ
        transaction_datetime_str = data.get("transactionDateTime")
        payos_transaction_time = None
        if transaction_datetime_str:
            try:
                # PayOS có thể trả về UTC hoặc múi giờ cụ thể. Giả định UTC nếu không rõ.
                # Nếu định dạng là YYYY-MM-DD HH:MM:SS, không có timezone info:
                payos_transaction_time = datetime.datetime.strptime(transaction_datetime_str, '%Y-%m-%d %H:%M:%S')
                # Nếu PayOS trả về UTC, có thể cần chuyển đổi:
                payos_transaction_time = pytz.utc.localize(payos_transaction_time)
            except ValueError:
                logger.warning(f"Could not parse transactionDateTime: {transaction_datetime_str}")

        payos_status_code = data.get("code")  # Mã lỗi của giao dịch trong 'data'
        payos_status_description = data.get("desc")  # Mô tả lỗi/kết quả trong 'data'

        if not order_code:
            logger.warning("Webhook payload 'orderCode' is missing.")
            return JSONResponse(content={"message": "No orderCode in payload"}, status_code=status.HTTP_200_OK)


        transaction_record = sql_db.get_payment_info(order_code)
        if not transaction_record:
            logger.warning(f"Webhook received for unknown order code: {order_code}. Skipping processing.")
            return JSONResponse(content={"message": "Order code not found"}, status_code=status.HTTP_200_OK)

        current_system_status = transaction_record[0][1]
        user_id = transaction_record[0][0]
        original_amount = transaction_record[0][2]

        # Đảm bảo tính idempotency: Chỉ xử lý nếu trạng thái chưa được COMPLETED
        if current_system_status == 'COMPLETED':
            logger.info(f"Transaction {order_code} already completed. Skipping update.")
            return JSONResponse(content={"message": "Transaction already completed"},
                                status_code=status.HTTP_200_OK)

        # 2. Xử lý logic nghiệp vụ dựa trên trạng thái (từ 'code' trong data của PayOS)
        # PayOS tài liệu thường nói '00' là thành công.
        if payos_status_code == "00":  # Mã thành công từ PayOS
            if amount != original_amount:
                logger.error(
                    f"Amount mismatch for order {order_code}. Expected: {original_amount}, Received: {amount}. Investigate immediately!")
                # Cập nhật trạng thái thành FAILED hoặc gửi cảnh báo
                sql_db.update_transactions('FAILED', payment_link_id, payos_transaction_time, description,
                                           order_code, customer_bank_name, customer_account_name, customer_account_number)
                return JSONResponse(content={"message": "Amount mismatch, action required"},
                                    status_code=status.HTTP_200_OK)

            # Cập nhật trạng thái giao dịch và các thông tin chi tiết
            sql_db.update_transactions('COMPLETED', payment_link_id, payos_transaction_time, description,
                                       order_code, customer_bank_name, customer_account_name, customer_account_number)
            logger.info(f"Transaction {order_code} status updated to COMPLETED. Amount: {amount}")

            # Cộng tiền vào số dư của người dùng
            sql_db.update_user_balance(amount, user_id)
            logger.info(f"User {user_id} balance increased by {amount}.")

        else:  # Các trạng thái khác ngoài '00' (thất bại, hủy, hết hạn)
            # Mapping trạng thái PayOS sang trạng thái hệ thống của bạn
            system_status_map = {
                "CANCELED": "CANCELED",
                "EXPIRED": "EXPIRED"
                # Thêm các mapping khác nếu PayOS có các mã lỗi cụ thể
                # Ví dụ: "10": "FAILED_PAYMENT_METHOD"
            }
            mapped_status = system_status_map.get(payos_status_code, 'FAILED')  # Mặc định là FAILED nếu không khớp

            sql_db.update_transactions(mapped_status, payment_link_id, payos_transaction_time, description,
                                       order_code, customer_bank_name, customer_account_name, customer_account_number)
            logger.info(
                f"Transaction {order_code} status updated to {mapped_status} (PayOS code: {payos_status_code}).")

        return JSONResponse(content={"message": "Webhook processed successfully"}, status_code=status.HTTP_200_OK)

    except json.JSONDecodeError:
        logger.error("Failed to parse webhook JSON body.")
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Invalid JSON body")
    except Exception as e:
        logger.error(f"Error processing webhook: {e}", exc_info=True)
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=f"Internal server error: {e}")

