DOTFILES=~/dotfiles

if [[ ! -d $DOTFILES ]] then
    git clone https://github.com/rfushimi/dotfiles.git $DOTFILES
fi

if [[ $HOST =~ "google.com$" ]] then
    if [ ! -d $DOTFILES/corp-dotfiles ]; then
        echo "Setting up corp machine."
        gcert
        git submodule add sso://user/fushimi/corp-dotfiles $DOTFILES/corp-dotfiles;
    fi
fi

# Link
ln -sf $DOTFILES/zshrc ~/.zshrc
ln -sf $DOTFILES/gitconfig ~/.gitconfig
ln -sf $DOTFILES/hgrc ~/.hgrc
ln -sf $DOTFILES/hgignore ~/.hgignore

# SSH - be careful.
mkdir -p ~/.ssh
if [[ ! -L .ssh/config ]] then
    cp ~/.ssh/config ~/.ssh/config.orig
fi

ln -sf $DOTFILE/ssh-config ~/.ssh/config

source ~/.zshrc