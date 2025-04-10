RECOMMENDER_PROMPT = """## Task:
1. Analyze the student's request to identify key requirements such as subject, degree, experience, schedule, teaching style, etc.
2. Evaluate each teacher profile against these requirements.
3. Select the most suitable teachers (maximum of 3), and briefly explain why each one is a good match.

## Output:
- Matching Teachers:
1. [Teacher_id - Teacher Name - teacher mail] – Reason for the match
2. [Teacher_id - Teacher Name - teacher mail] – Reason for the match
3. [Teacher_id - Teacher Name - teacher mail] – Reason for the match"""

DATABASE_CONFIG = {
    "dbname": "Educonnect",
    "user": "postgres",
    "password": "12345678",
    "host": "localhost",
    "port": 5432
}