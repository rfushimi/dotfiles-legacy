#!/bin/bash

if [[ "$(uname -s)" == "Darwin" ]]; then
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi
