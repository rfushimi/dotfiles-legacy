#!/usr/bin/env python3

import anthropic
import sys
import LLMClient.LLMClient as LLMClient

# Create LLM client instance
llm_client = LLMClient.LLMClient()
data = sys.stdin.read()


system_prompt = llm_client.SYSTEM_PROMPT_SELF + llm_client.SYSTEM_PROMPT_INST + llm_client.SYSTEM_PROMPT_EXTRA
result = llm_client.generate(system = system_prompt, input = data)

# Print the generated sonnet
print(data)
print(result)
