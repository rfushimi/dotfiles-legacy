DOTFILES=~/dotfiles
DOTFILES_SHELL=bash

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done
