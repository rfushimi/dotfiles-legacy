DOTFILES=~/dotfiles
DOTFILES_SHELL=zsh

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done

<<<<<<< HEAD
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ryohei/.lmstudio/bin"

=======
>>>>>>> fd84a37c30 (Update by 'update_dotfiles')
. "$HOME/.local/bin/env"
