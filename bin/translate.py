#!/usr/bin/env python3

import sys
# import LLMClient.Claude as Claude
from LLMClient.Gemini import LLMClientGemini
import argparse

# Parse command line arguments
parser = argparse.ArgumentParser()
parser.add_argument("--task", help="Specify the task")
args = parser.parse_args()

# Rest of the code
llm_client = LLMClientGemini()
data = sys.stdin.read()

system_prompt = ""
# Determine system prompt based on task
if args.task == "writing":
  system_prompt = system_prompt = llm_client.SYSTEM_PROMPT_SELF + llm_client.SYSTEM_PROMPT_INST_WRITING + llm_client.SYSTEM_PROMPT_EXTRA
elif args.task == "reading":
  system_prompt = system_prompt = llm_client.SYSTEM_PROMPT_SELF + llm_client.SYSTEM_PROMPT_INST_READING + llm_client.SYSTEM_PROMPT_EXTRA

result = llm_client.translate(system=system_prompt, input=data)
print(data)
print(result)
