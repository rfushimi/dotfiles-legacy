#!/bin/bash

if [[ ! -f $HOME/.local/bin/uv ]]; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

if [[ ! -d $HOME/.local/share/uv ]]; then
    mkdir -p ~/.local/share/uv
    cd ~/.local/share/uv
    uv venv
fi
