#!/usr/bin/env python3

import click
import sys
from LLMClient.Gemini import LLMClientGemini

if __name__ == '__main__':
    main()

@click.command()
@click.option('--task', prompt='Task type', help='writing or reading')
def main(task):
  # Rest of the code
  llm_client = LLMClientGemini()
  data = sys.stdin.read()

  system_prompt = ""
  # Determine system prompt based on task
  if task == "writing":
    system_prompt = system_prompt = llm_client.SYSTEM_PROMPT_SELF + llm_client.SYSTEM_PROMPT_INST_WRITING + llm_client.SYSTEM_PROMPT_EXTRA
  elif task == "reading":
    system_prompt = system_prompt = llm_client.SYSTEM_PROMPT_SELF + llm_client.SYSTEM_PROMPT_INST_READING + llm_client.SYSTEM_PROMPT_EXTRA

  result = llm_client.translate(system=system_prompt, input=data)
  print(data)
  print(result)

