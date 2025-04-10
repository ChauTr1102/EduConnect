from api.services import *


class RecommenderSystem:
    def __init__(self, gemini_apikey=None):
        self.gemini_apikey = gemini_apikey

    def prompt_recommender(self, student_request, teacher_profiles):
        prompt_recommender = ChatPromptTemplate.from_messages(
            [
                ("system", "You are an AI system tasked with finding the most suitable teachers based on a student's request."),
                ("system", f"{RECOMMENDER_PROMPT}"),
                ("system", "**Answer the question:** {question}"),
                ("system", "**Student's Request**: {student_request}"),
                ("system", "**List of Available Teachers:**\n{teacher_profiles}\n"),
            ]
        )