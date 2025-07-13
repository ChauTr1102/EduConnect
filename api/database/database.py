from api.database import *
from datetime import datetime
import secrets


class SQLDatabase:
    def __init__(self):
        conn = psycopg2.connect(**DATABASE_CONFIG)
        self.cur = conn.cursor()
        conn.set_session(autocommit=True)

    def select_post(self):
        self.cur.execute(f"select * from posts order by created_at")
        return self.cur.fetchall()

    def get_teachers_profile(self):
        self.cur.execute("""select t.teacher_id, u.name, u.email, t.introduction, t.degree, t.experience, t.teaching_style 
from users u join teachers t on u.user_id = t.teacher_id where t.is_finding_student = true""")
        return self.cur.fetchall()

    def check_login(self, username, password):
        # Truy vấn kiểm tra user_id và password
        query = f"SELECT user_id FROM users WHERE username = %s AND password = %s"
        try:
            self.cur.execute(query, (username, password))
            result = self.cur.fetchall()[0][0]
            return result
        except:
            return 0

    # Matching
    # upload post
    def upload_post(self, post_id, user_id, content, status):
        query = "INSERT INTO posts (post_id, user_id, content, status) VALUES (%s, %s, %s, %s)"
        self.cur.execute(query, (post_id, user_id, content, status))

    # add suitable teacher into table
    def insert_suitable_teacher(self, post_id, teacher_id, teacher_name, email, reason):
        query = ("INSERT INTO suitable_teachers (post_id, teacher_id, teacher_name, email, reason) "
                 "values (%s, %s, %s, %s, %s)")
        self.cur.execute(query, (post_id, teacher_id, teacher_name, email, reason))

    # lấy ra suitable teacher
    def get_suitable_teacher(self, post_id):
        self.cur.execute(f"select * from suitable_teachers where post_id ='{post_id}'")
        return self.cur.fetchall()

    # Lấy thông tin của teacher
    def get_teacher_info(self, teacher_id):
        self.cur.execute(f"""select u.user_id, u.name, u.gender,u.birth_date, u.email, u.address, t.introduction, t.degree, t.experience, t.teaching_style, t.hobby
                            from teachers t join users u on t.teacher_id=u.user_id
                            where t.teacher_id = '{teacher_id}'""")
        return self.cur.fetchall()

    def get_posts_with_usernames(self):
        query = """
        SELECT p.post_id, u.username, p.content 
        FROM posts p
        JOIN users u ON p.user_id = u.user_id
        ORDER BY p.created_at DESC
        """
        self.cur.execute(query)
        return self.cur.fetchall()

    def insert_payment_info(self, user_id, order_code, amount, description_text, payment_link_id):
        query = """
        INSERT INTO transactions (user_id, order_code, amount, transaction_status, transaction_type, description, paymentLinkId)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
        """
        self.cur.execute(query, (user_id, order_code, amount, 'PENDING', 'DEPOSIT', description_text, payment_link_id))


    def get_payment_info(self, order_code):
        self.cur.execute("SELECT user_id, transaction_status, amount FROM transactions WHERE order_code = %s",
            (str(order_code),))
        return self.cur.fetchall()

    def update_transactions(self, transaction_status, payos_payment_link_id, payos_transaction_time,
                            payos_status_code, payos_status_description, order_code):
        query = """UPDATE transactions
        SET transaction_status = %s,
            payos_payment_link_id = %s,
            payos_transaction_time = %s,
            payos_status_code = %s,
            payos_status_description = %s
        WHERE order_code = %s
        """
        self.cur.execute(query, (transaction_status, payos_payment_link_id, payos_transaction_time,
                            payos_status_code, payos_status_description, order_code))

    def update_user_balance(self,amount, user_id):
        query = "UPDATE users SET balance = balance + %s WHERE user_id = %s"
        self.cur.execute(query, (amount, user_id))

    def get_user_balance(self, user_id):
        self.cur.execute(f"select balance from users where user_id = '{user_id}'")
        return self.cur.fetchone()[0]

