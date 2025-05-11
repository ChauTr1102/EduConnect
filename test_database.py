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

    def get_all_user_ids(self):
        try:
            self.cur.execute("SELECT user_id FROM users")
            results = self.cur.fetchall()

            user_ids = [row[0] for row in results]
            return user_ids
        
        except Error as e:
            print(f"Error retrieving user IDs: {e}")
            return []
        
    def create_conversation_with_participants(self, conversation_name, participant_ids):
        try:
            # Generate a conversation ID
            conversation_id = "cv" + datetime.now().strftime("%Y%m%d%H%M") + secrets.token_hex(3)
            
            # Insert the new conversation
            self.cur.execute(
                "INSERT INTO conversations (conversation_id, conversation_name) VALUES (%s, %s)",
                (conversation_id, conversation_name)
            )
            # Add participants to the conversation
            for user_id in participant_ids:
                self.cur.execute(
                    "INSERT INTO participants_conversation (conversation_id, user_id) VALUES (%s, %s)",
                    (conversation_id, user_id)
                )
            
            return conversation_id
        
        except Exception as e:
            # Since autocommit is True, we don't need explicit commit/rollback
            print(f"Error creating conversation: {e}")
            return None
    

    def delete_conversation(self, conversation_id):
        try:
            # First, delete all participants for this conversation
            self.cur.execute(
                "DELETE FROM participants_conversation WHERE conversation_id = %s",
                (conversation_id,)
            )
            # Then delete the conversation
            self.cur.execute(
                "DELETE FROM conversations WHERE conversation_id = %s",
                (conversation_id,)
            )
            # Check if any rows were affected
            rows_deleted = self.cur.rowcount

            if rows_deleted == 0:
                print(f"No conversation found with ID: {conversation_id}")
                return False
                
            print(f"Successfully deleted conversation: {conversation_id}")
            return True
            
        except Exception as e:
            # Roll back in case of error
            if not self.conn.autocommit:
                self.conn.rollback()
                self.conn.autocommit = True
            print(f"Error deleting conversation: {e}")
            return False


    def get_user_conversations(self, user_id):
        try:
            query = """
                SELECT conversation_id 
                FROM participants_conversation 
                WHERE user_id = %s
            """
            self.cur.execute(query, (user_id,))
            conversations = [row[0] for row in self.cur.fetchall()]
            return conversations
        except Exception as e:
            print(f"Error fetching conversations for user {user_id}: {e}")
            return []




    #get message
    def add_message_to_conversation(self, conversation_id, sender_id, message_text):
        try:
            query = """
            INSERT INTO messages (conversation_id, sender_id, message_text)
            VALUES (%s, %s, %s)
            RETURNING message_id
            """
            
            self.cur.execute(query, (conversation_id, sender_id, message_text))
            message_id = self.cur.fetchone()[0]  # Get the auto-generated message_id
            
            return message_id
        except Exception as e:
            print(f"Error adding message to conversation {conversation_id}: {e}")
            return None

db = SQLDatabase()
add_message = db.add_message_to_conversation("cv202504102055735038","stu_001","helloboy")




# get_user_conversations = db.get_user_conversations("stu_001")
# print(get_user_conversations)

# db = SQLDatabase()
# conver1 = "cv2025041020179bee15"
# conversation_id = db.delete_conversation(
#     conver1
# )
# print(conversation_id)
# print(f"delete conversation: {conver1}")





# db = SQLDatabase()
# conversation_id = db.create_conversation_with_participants(
#     "Study Group Chat3", 
#     ["stu_001", "stu_002"]
# )
# print(f"Created conversation: {conversation_id}")










# def main():
#     # Create an instance of SQLDatabase
#     db = SQLDatabase()
    
   
#     # Get all user IDs using the class method
#     user_ids = db.get_all_user_ids()
    
#     # Display the results
#     if user_ids:
#         print(f"Found {len(user_ids)} users")
#         print("User IDs:")
#         for user_id in user_ids:
#             print(f"- {user_id}")
#     else:
#         print("No users found or an error occurred")
    
   

# if __name__ == "__main__":
#     main()