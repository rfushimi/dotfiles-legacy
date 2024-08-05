DOTFILES=~/dotfiles
DOTFILES_SHELL=zsh

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done
