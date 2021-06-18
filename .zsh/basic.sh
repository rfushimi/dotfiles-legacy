EDITOR=vim
export LANG=ja_JP
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

setopt auto_cd
cdpath=(. - ~ - $HOME/dev/iGMM/google3)

setopt auto_pushd
setopt correct
setopt list_packed
setopt nolistbeep

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt share_history
setopt complete_aliases

case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -G -w"
  ;;
linux*)
  alias ls="ls --color"
  ;;
esac

export P4DIFF=~/bin/p4fmdiff
export P4MERGE=~/bin/p4fmmerge
export GOOGLE3_ROOT=~/dev/iGMM/google3

autoload colors
colors

autoload -U compinit
compinit -u

source /Library/GoogleCorpSupport/srcfs/shell_completion/enable_completion.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias p="prodaccess"

export GOROOT=~/go