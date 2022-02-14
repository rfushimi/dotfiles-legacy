# Homebrew stuff
export PATH=$HOME/homebrew/bin:$HOME/go/bin:$HOME/bin:$PATH:$HOME/flutter/bin
export FPATH=$HOME/dotfiles/faster-vcs-info:$FPATH
export PATH=$PATH:~/.npm-global/bin

# RemoteCITC
REMOTE_CITC_PATH="${HOME}/source/remotecitc-fig/google3/experimental/users/snorum/local/bin-experimental/remotecitc"
PATH="${PATH}:${REMOTE_CITC_PATH}"

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
