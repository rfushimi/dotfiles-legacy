#!/usr/bin/env zsh

# Relative path from home directory.
DOTFILES=dotfiles
DOTFILES_PATH=~/$DOTFILES_PATH

cd ~
if [[ ! -d $DOTFILES ]] then
    git clone https://github.com/rfushimi/dotfiles.git $DOTFILES
fi

if [[ $HOST =~ "google.com$" ]] then
    if [ ! -d $DOTFILES/corp-dotfiles ]; then
        echo "Setting up corp machine."
        gcert
        git submodule add sso://user/fushimi/corp-dotfiles $DOTFILES/corp-dotfiles
        git submodule update --init --recursive
    fi
fi

# Link
ln -sf $DOTFILES/zshrc .zshrc
ln -sf $DOTFILES/gitconfig .gitconfig
ln -sf $DOTFILES/gitignore .gitignore
ln -sf $DOTFILES/hgrc .hgrc
ln -sf $DOTFILES/hgignore .hgignore

# SSH - be careful.
mkdir -p ~/.ssh
if [[ ! -L .ssh/config ]] then
    cp ~/.ssh/config ~/.ssh/config.orig
fi

ln -sf $DOTFILE/ssh-config ~/.ssh/config

case "${OSTYPE}" in
darwin*)
    # install homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    brew bundle

    # fonts
    brew tap homebrew/cask-fonts
    brew install font-inconsolata font-migu-2m font-menlo

    if [[ $HOST =~ "google.com$" ]] then
    else
        # non-corp dev
        brew install visual-studio-code
        brew install docker docker-compose
        # media
        brew install obs xquartz

        # apps
        brew install steam epic-games bitwarden kindle notion slack spotify
    fi

    # common dev
    brew install wget
    brew install coteditor
    brew install google-cloud-sdk
    brew install jq
    brew install exa

    # tools
    brew install adobe-creative-cloud
    brew install caffeine
    brew install google-japanese-ime
    ;;
esac

source ~/.zshrc