from api.services import *

class RecommenderSystem:
    def __init__(self, gemini_apikey=None):
        self.gemini_apikey = gemini_apikey

    def prompt_recommender(self):
        prompt_recommender = ChatPromptTemplate.from_messages(
            [
                ("system", "**Instruction 1:**\n {prompt_folder}\n"),
                ("system", "**Instruction 2:**\n {prompt_template}\n"),
                ("system", "**Chat history:**\n {chat_history}\n"),
                ("system", "**Context about relevant data:**\n{context}\n"),
                ("system", "**Context received from google search:**\n{web_search_context}\n"),
                ("system", "**Answer the question:** {question}"),
            ]
        )