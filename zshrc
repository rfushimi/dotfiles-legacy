DOTFILES=~/dotfiles

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done
