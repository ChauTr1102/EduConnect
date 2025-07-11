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


    def check_username_exists(self, username: str) -> bool:
        self.cur.execute("SELECT EXISTS(SELECT 1 FROM users WHERE username = %s)", (username.lower(),))
        return self.cur.fetchone()[0]

    def check_email_exists(self, email: str) -> bool:
        self.cur.execute("SELECT EXISTS(SELECT 1 FROM users WHERE email = %s)", (email.lower(),))
        return self.cur.fetchone()[0]

    def register_student(self, student_data: dict) -> str:
        try:
            # Bắt đầu transaction
            self.cur.execute("BEGIN")

            # Tạo user_id ngẫu nhiên
            user_id = f"stu_{secrets.token_hex(8)}"

            # Thêm vào bảng users
            self.cur.execute("""
                INSERT INTO users (
                    user_id, username, password, name,
                    birth_date, gender, email, address, avatar_url
                )
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                """,
                             (
                                 user_id,
                                 student_data['username'].lower(),
                                 student_data['password'],  # Lưu ý: nên mã hóa password
                                 student_data['name'],
                                 student_data['birth_date'],
                                 student_data['gender'],
                                 student_data['email'].lower(),
                                 student_data.get('address'),
                                 student_data.get('avatar_url',
                                                  'https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Image.png')
                             )
                             )

            # Thêm vào bảng students
            self.cur.execute("""
                INSERT INTO students (
                    student_id, introduction, hobby
                )
                VALUES (%s, %s, %s)
                """,
                             (
                                 user_id,
                                 student_data.get('introduction'),
                                 student_data.get('hobby')
                             )
                             )

            # Commit transaction
            self.cur.execute("COMMIT")
            return user_id

        except Exception as e:
            self.cur.execute("ROLLBACK")
            raise e
