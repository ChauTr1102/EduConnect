from api.services import *


class RecommenderSystem:
    def __init__(self, gemini_apikey=None):
        self.model_llm = None
        self.gemini_apikey = gemini_apikey

    def prompt_recommender(self, student_request, teacher_profiles):
        prompt_recommender_template = ChatPromptTemplate.from_messages(
            [
                ("system", "You are an AI system tasked with finding the most suitable teachers based on a student's request."),
                ("system", f"{RECOMMENDER_PROMPT}"),
                ("system", "**This is student request and teacher's profile:\n"),
                ("system", "**Student's Request**: {student_request}"),
                ("system", "**List of Available Teachers:**\n{teacher_profiles}\n"),
            ]
        )
        prompt_recommender = prompt_recommender_template.format(student_request=student_request,
                                                                teacher_profiles=teacher_profiles)
        return prompt_recommender

    async def send_message_gemini(self, prompt: str) -> str:
        self.model_llm = ChatGoogleGenerativeAI(
            model="gemini-2.0-flash-exp-image-generation",
            api_key=self.gemini_apikey,
            streaming=False  # Tắt stream
        )

        # Dùng HumanMessage để wrap prompt
        response = await self.model_llm.ainvoke(prompt)

        # Trả về nội dung chính
        return response.content
