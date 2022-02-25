
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
else
    if [[ -a $DOTFILES/corp-dotfiles/zsh/hosts/$HOST.sh ]]; then
        source $DOTFILES/corp-dotfiles/zsh/hosts/$HOST.sh
    else
        source $DOTFILES/zsh/hosts/default.sh
    fi
fi

if [[ $HOST =~ "google.com$" ]] then
  for file in $DOTFILES/corp-dotfiles/zsh/*.sh; do
    source "$file"
  done
fi


