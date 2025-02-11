# API Directory Documentation

This directory contains Python code designed to provide API functionalities, primarily focused on interacting with Large Language Models (LLMs) for tasks such as translation. It is structured to be modular and extensible, supporting different LLM providers and potentially other API endpoints in the future.

## Directory Structure

```
api/
├── claude.py
├── LLMClient/
│   ├── Claude.py
│   ├── Gemini.py
│   ├── LLMClient.py
├── readme.md
└── translate.py
```

## File Descriptions

### `translate.py`

-   **Purpose:** This is the main command-line interface (CLI) script for performing text translation using the Gemini LLM.
-   **Functionality:**
    -   Reads text input from standard input (`stdin`).
    -   Utilizes the `LLMClient.Gemini` module to interact with the Gemini LLM.
    -   Applies a system prompt (defined within `LLMClient.Gemini`) to guide the translation process, ensuring accuracy and contextual relevance.
    -   Outputs the translated text to standard output (`stdout`).
-   **Usage:**
    ```bash
    echo "Text to be translated" | api/translate.py
    ```
-   **Dependencies:**
    -   `LLMClient.Gemini`:  Provides the Gemini LLM client.

### `claude.py`

-   **Purpose:** This file is intended to be a command-line interface (CLI) script for text translation using the Claude LLM.
-   **Current Status:**  While present, this script might be in development, incomplete, or not fully functional yet. It likely serves as a placeholder for future implementation of Claude LLM translation capabilities, mirroring the functionality of `translate.py` but for the Claude model.
-   **Potential Future Functionality:**  Once implemented, it would likely:
    -   Read text from `stdin`.
    -   Use `LLMClient.Claude` to interact with the Claude LLM.
    -   Apply a Claude-specific system prompt.
    -   Output translated text to `stdout`.

### `LLMClient/` Subdirectory

-   **Purpose:** This directory houses the client libraries for interacting with different LLM providers. It promotes modularity and allows for easy integration of new LLM services.
-   **Contents:**
    -   **`LLMClient.py`**:
        -   **Purpose:** Defines an abstract base class or interface named `LLMClient`.
        -   **Functionality:**  Specifies the common methods and attributes that all LLM client implementations within this API should adhere to. This ensures a consistent API for interacting with different LLMs, simplifying the process of adding or switching between providers.  It likely includes methods for:
            -   `generate()`:  For sending prompts to the LLM and receiving responses.
            -   `SYSTEM_PROMPT_SELF`, `SYSTEM_PROMPT_INST`, `SYSTEM_PROMPT_EXTRA`:  For defining system prompts used to guide LLM behavior.
    -   **`Claude.py`**:
        -   **Purpose:** Implements the `LLMClient` interface specifically for interacting with the Claude LLM API.
        -   **Functionality:**  Contains the Claude-specific logic for:
            -   Authentication with the Claude API.
            -   Formatting requests according to the Claude API requirements.
            -   Parsing responses from the Claude API.
            -   Potentially handling Claude-specific parameters or configurations.
    -   **`Gemini.py`**:
        -   **Purpose:** Implements the `LLMClient` interface for the Gemini LLM API.
        -   **Functionality:** Contains the Gemini-specific logic for:
            -   Authentication with the Gemini API.
            -   Formatting requests for the Gemini API.
            -   Parsing responses from the Gemini API.
            -   Potentially handling Gemini-specific parameters or configurations.
            -   Currently used by `translate.py` for translation tasks.

## Extensibility and Future Development

The `api/` directory is designed with extensibility in mind.  Adding support for new LLM providers or API functionalities can be achieved by:

1.  Creating a new client implementation in the `LLMClient/` directory (e.g., `LLMClient/NewLLM.py`).
2.  Developing new scripts in the `api/` directory (e.g., `summarize.py`, `code_completion.py`) that utilize the appropriate `LLMClient` module to expose new API functionalities.

## Notes

-   **Configuration:** Ensure that all `LLMClient` modules are properly configured with the necessary API keys, credentials, and any other provider-specific settings.
-   **Dependencies:**  This API likely depends on external libraries for making HTTP requests and handling API interactions. These dependencies should be managed using a Python package manager (e.g., pip, pdm).
-   **Error Handling:**  The code should include robust error handling to manage API errors, network issues, and invalid inputs.

This documentation provides an overview of the `api/` directory's structure and the purpose of each file.  It should help developers understand the codebase and contribute to its further development and expansion.
