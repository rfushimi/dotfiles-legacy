DOTFILES=~/dotfiles
DOTFILES_SHELL=zsh

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ryohei/.lmstudio/bin"

. "$HOME/.local/bin/env"
