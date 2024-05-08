
import sys
import google.generativeai as genai

class LLMClientGemini:
  SYSTEM_PROMPT_SELF = "User is senior software engineer whose ESL speaker working for Google."
  SYSTEM_PROMPT_INST = "Make the following sentences in English natural and idiomatic, or translate if necessary. "
  SYSTEM_PROMPT_EXTRA = "It will be used for internal technical discussion, so it’s expected to be more concise, to-the-point, instead of being polite or lengthy."

  def __init__(self):
    # Read API key from file
    with open('/Users/ryohei/keys/gemini.key', 'r') as file:
      api_key = file.read().rstrip('\n')
    genai.configure(api_key=api_key)
    self.client = genai.GenerativeModel('gemini-pro')
  
  def generate(self, system, input):
    print(input)
    response = self.client.generate_content(self.SYSTEM_PROMPT_SELF + self.SYSTEM_PROMPT_INST + self.SYSTEM_PROMPT_EXTRA + "\n\n" + input)
    response.resolve()
    print(response)
    return response.text
