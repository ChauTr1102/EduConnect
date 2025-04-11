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
        query = f"""
            SELECT EXISTS (
                SELECT 1 
                FROM users 
                WHERE username = '{username}' AND password = '{password}'
            ) AS user_exists;
        """
        try:
            # Sử dụng tham số hóa để tránh SQL Injection
            self.cur.execute(query, (username, password))
            result = self.cur.fetchone()
            return result[0]
        except psycopg2.Error as e:
            print(f"Lỗi khi truy vấn: {e}")
            return False



