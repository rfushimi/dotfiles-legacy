# Dotfiles Repository

This repository contains my personal dotfiles, configurations, and scripts for macOS and Linux environments. It is managed using Git and designed to be easily installed and updated across multiple machines.

## Structure

The repository is organized into the following directories:

-   **`api/`**: Contains Python code for API functionalities, primarily focused on interacting with Large Language Models (LLMs) for tasks like translation. Includes client libraries for Gemini and Claude.
-   **`bin/`**:  Scripts and executables for various utilities and automation tasks. These are typically shell scripts or Python scripts.
-   **`fonts/`**: Custom fonts for terminal and UI enhancements. Includes HackGen and HackGen_NF fonts.
-   **`IME/`**: Input Method Editor (IME) configurations and user dictionaries for improved Japanese input.
-   **`include/`**:  Include files, potentially for C/C++ development or other purposes. Currently contains Python headers.
-   **`lib/`**: Libraries, likely Python libraries installed within a virtual environment (`venv`).
-   **`services/`**: Services configurations, such as macOS Automator workflows.
-   **`src/`**: Source code directory.
    -   **`dotfiles/`**: Python package for managing dotfiles (potentially for internal use).
    -   **`LLMTools/`**: Python package containing code related to Large Language Model tools, including translation scripts and client libraries.
-   **`ssh/`**: SSH configurations, including `config` file, host-specific settings, and scripts for SSH multiplexing.
-   **`zsh/`**: Zsh shell configurations, including:
    -   `alias.sh`: Aliases for common commands.
    -   `app-google-cloud-sdk.sh`, `app-pyenv.sh`: Configurations for specific applications (Google Cloud SDK, pyenv).
    -   `arch/`: Architecture-specific configurations (arm64, x86_64).
    -   `env/`: Environment-specific configurations (darwin, linux).
    -   `hosts/`: Host-specific configurations.
    -   `imports.sh`: Zsh import statements.
    -   `iterm2_shell_integration.sh`: iTerm2 shell integration scripts.
    -   `path.sh`:  Configuration for the system PATH environment variable.
    -   `prompt.sh`: Zsh prompt configuration.
    -   `default.sh`: Default Zsh settings.
-   **`corp-dotfiles/`**: Configurations and scripts specific to corporate environments (e.g., Google).
-   **`venv/`**: Python virtual environment for managing Python dependencies.

## Files

-   `.gitignore`, `.stglobalignore`, `hgignore`: Files specifying patterns for files that should be ignored by Git, Mercurial, or other version control systems.
-   `.python-version`: Specifies the Python version to be used for the project (likely used by pyenv or pdm).
-   `.sleep`:  Likely a script or configuration related to system sleep settings.
-   `bash_aliases`: Bash shell aliases.
-   `Brewfile`, `Brewfile.lock.json`:  Brew (macOS package manager) configurations for installing software.
-   `gitconfig`: Git global configuration file.
-   `gitignore`: Global Git ignore file.
-   `hgignore`: Mercurial global ignore file.
-   `HotKey.config`: Configuration file for a hotkey utility.
-   `install.sh`:  Installation script for setting up the dotfiles.
-   `pdm.lock`, `requirements-dev.lock`, `requirements.lock`: Dependency lock files for Python projects (likely managed by pdm and pip).
-   `pyproject.toml`: Python project configuration file (likely for pdm).
-   `README.md`: This file - describing the repository.
-   `ssh-config`: SSH configuration file.
-   `vimrc`: Vim editor configuration file.
-   `zshrc`: Zsh shell configuration file.

## Installation

To install these dotfiles, you can use the `install.sh` script.

```bash
./install.sh
```

**Note:** Review the `install.sh` script before running it to understand what changes it will make to your system. It likely involves creating symbolic links from the repository files to your home directory.

## Updating

To update the dotfiles, simply pull the latest changes from the repository:

```bash
git pull origin main
```

Then, you may need to re-run the `install.sh` script or manually apply any updated configurations.

## Usage and Customization

-   **Shell:**  The primary shell configured is Zsh. Ensure you have Zsh installed.
-   **Customization:**  Feel free to customize these dotfiles to your own preferences.
    -   Edit the configuration files directly (e.g., `zshrc`, `vimrc`, files in `zsh/`, `ssh/`).
    -   Add your own scripts to the `bin/` directory.
    -   Manage Python dependencies using `pdm` or `pip` within the `venv/` environment.
-   **Host-specific Configurations:** Utilize the `zsh/hosts/` and `ssh/` directories for host-specific settings.

## Contributing

(Optional: Add contribution guidelines if you plan to share this repository)

## License

(Optional: Add license information, e.g., MIT License)
