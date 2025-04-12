RECOMMENDER_PROMPT = """## Task:
1. Analyze the student's request to identify key requirements such as subject, degree, experience, schedule, teaching style, etc.
2. Evaluate each teacher profile against these requirements.
3. Select the most suitable teachers (maximum of 3), and briefly explain why each one is a good match.
4. If the user's input is not about finding teacher, just response nothing ""
## Output (Return the result in the following JSON format):
[
  {{
    "teacher_id": teacher_id,
    "name": teacher_name,
    "email": email
    "reason": "Short explanation why this teacher is a good fit"
  }},
    ...
]
"""

DATABASE_CONFIG = {
    "dbname": "Educonnect",
    "user": "postgres",
    "password": "manhngu123",
    "host": "localhost",
    "port": 5432
}