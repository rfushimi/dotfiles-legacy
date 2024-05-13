
import sys, os
import google.generativeai as genai

class LLMClientGemini:
  SYSTEM_PROMPT_SELF = "User is senior software engineer whose ESL speaker working for Google."
  SYSTEM_PROMPT_INST = "Make the following sentences in English natural and idiomatic, or translate if necessary. "
  SYSTEM_PROMPT_EXTRA = "It will be used for internal technical discussion, so it’s expected to be more concise, to-the-point, instead of being polite or lengthy."

  def __init__(self):
    # Read API key from file
    with open('/Users/' + os.environ.get('USER') + '/keys/gemini.key', 'r') as file:
      api_key = file.read().rstrip('\n')
    genai.configure(api_key=api_key)
    self.client = genai.GenerativeModel('gemini-pro')
  
  def generate(self, system, input):
    response = self.client.generate_content(system + "\n\n" + input)
    response.resolve()
    return response.text
