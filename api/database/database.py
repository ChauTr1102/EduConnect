from api.database import *
from datetime import datetime
import secrets


class SQLDatabase:
    def __init__(self):
        conn = psycopg2.connect(database=DATABASE, host=HOST, port=PORT, user=USER, password=PASSWORD)
        self.cur = conn.cursor()
        conn.set_session(autocommit=True)

    def select_post(self):
        self.cur.execute(f"select * from posts order by created_at")
        return self.cur.fetchall()

