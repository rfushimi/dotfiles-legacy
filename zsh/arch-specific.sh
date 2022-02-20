
case "${OSTYPE}" in
"darwin")
  echo "$DOTFILES/zsh/env/darwin.sh"
  source $DOTFILES/zsh/env/darwin.sh
  ;;
"linux")
  echo "$DOTFILES/zsh/env/linux.sh"
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

if [[ -a $DOTFILES/zsh/$HOST ]]; then
    source $DOTFILES/zsh/$HOST.sh
else
    source $DOTFILES/zsh/default.sh
fi

if [[ $HOST =~ "google.com$" ]] then
  for file in $DOTFILES/corp-dotfiles/*.sh; do
    source "$file"
  done
fi


