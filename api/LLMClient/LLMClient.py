import anthropic
import sys

class LLMClient:
  SYSTEM_PROMPT_SELF = "User is senior software engineer whose ESL speaker working for Google."
  SYSTEM_PROMPT_INST = "Make the following sentences in English natural and idiomatic, or translate if necessary. "
  SYSTEM_PROMPT_EXTRA = "It will be used for internal technical discussion, so it’s expected to be more concise, to-the-point, instead of being polite or lengthy."

  def __init__(self):
    # Read API key from file
    with open('/Users/ryohei/keys/claude.key', 'r') as file:
      api_key = file.read().rstrip('\n')
    self.api_key = api_key
    self.client = anthropic.Anthropic(api_key=self.api_key)
  
  def generate(self, system, input):
    message = self.client.messages.create(
      model="claude-3-sonnet-20240229",
      max_tokens=1000,
      system=system,
      messages=[
        {
          "role": "user",
          "content": input
        }
      ]
    )
    return message.content[0].text
  