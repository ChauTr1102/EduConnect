from api.services import *

class ChatBot:
    def __init__(self, gemini_apikey=None):
        self.model_llm = None
        self.gemini_apikey = gemini_apikey

    def prompt_chat_with_teacher(self, teacher_profile, student_question):
        prompt_chat_with_teacher_template = ChatPromptTemplate.from_messages(
            [
                ("system", f"{TEACHER_PROMPT}\n"),
                ("system", "{teacher_profile}\n"),
                ("system", "**Student's question**:\n{student_question}"),
            ]
        )
        prompt_chat_with_teacher = prompt_chat_with_teacher_template.format(student_question=student_question,
                                                                            teacher_profile=teacher_profile)
        return prompt_chat_with_teacher

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
