
case "${OSTYPE}" in
darwin*)
    source $DOTFILES/zsh/env/darwin.sh
    ;;
linux*)
    source $DOTFILES/zsh/env/linux.sh
    ;;
esac

case `uname -m` in
"arm64")
    source $DOTFILES/zsh/arch/arm64.sh
    ;;
"x86_64")
    source $DOTFILES/zsh/arch/x86_64.sh
    ;;
esac

if [[ -a $DOTFILES/zsh/hosts/$HOST.sh ]]; then
    source $DOTFILES/zsh/hosts/$HOST.sh
fi

if [[ $USER =~ "fushimi" ]] then
  for file in $DOTFILES/corp-dotfiles/zsh/*.sh; do
    source "$file"
  done
fi
