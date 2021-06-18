# Homebrew stuff
export PATH=$HOME/homebrew/bin:$HOME/go/bin:$HOME/bin:$PATH:$HOME/flutter/bin
export FPATH=$HOME/dotfiles/faster-vcs-info:$FPATH

export PATH=$PATH:~/.npm-global/bin

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
