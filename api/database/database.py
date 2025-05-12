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
            # Sử dụng tham số hóa để tránh SQL Injection
            self.cur.execute(query, (username, password))
            result = self.cur.fetchall()[0][0]
            return result
        except psycopg2.Error as e:
            print(f"Lỗi khi truy vấn: {e}")
            return False

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




