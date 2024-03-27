#!/usr/bin/env bash

# curl https://raw.githubusercontent.com/rfushimi/dotfiles/main/install.sh | zsh

if read -q "choice?Install dotfiles? [y/n]:\n"; then
    # Relative path from home directory.
    export DOTFILES=dotfiles
    export DOTFILES_PATH=~/$DOTFILES_PATH

    cd ~
    if [[ ! -d $DOTFILES ]] then
        git clone https://github.com/rfushimi/dotfiles.git $DOTFILES
    fi

    # If $USER is "fushimi" I'm on corp machine
    if [[ $USER = "fushimi" ]] then
        if [ ! -d $DOTFILES/corp-dotfiles ]; then
            echo "Setting up corp machine."
            gcert
            # Not visible from ouside of corp
            git submodule add sso://user/$USER/corp-dotfiles $DOTFILES/corp-dotfiles
            git submodule update --init --recursive
        fi
        zsh $DOTFILES/corp-dotfiles/install.sh
    fi

    # Link
    ln -sf $DOTFILES/zshrc .zshrc
    ln -sf $DOTFILES/bash_aliases .bash_aliases
    # ln -sf $DOTFILES/bash_profile .bash_profile
    # ln -sf $DOTFILES/profile .profile
    ln -sf $DOTFILES/gitconfig .gitconfig
    ln -sf $DOTFILES/gitignore .gitignore

    # SSH - be careful.
    mkdir -p ~/.ssh
    if [[ ! -L .ssh/config ]] then
        cp ~/.ssh/config ~/.ssh/config.orig
    fi
    ln -sf $DOTFILE/ssh-config ~/.ssh/config
    echo "Successfully installed dotfiles."
fi

source ~/.zshrc > /dev/null

case "${OSTYPE}" in
darwin*)
    if read -q "choice?Install HomeBrew? [y/n]:\n"; then
        echo $choice2
        # Install homebrew - use at your own risk.
        if [[ $HOMEBREW_DIR =~ "^$HOME" ]] then
            echo "Setting up homebrew for custom directory: $HOMEBREW_DIR"
            mkdir $HOMEBREW_DIR && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOMEBREW_DIR
        else
            echo "Setting up homebrew for standard directory: $HOMEBREW_DIR"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        fi
    fi

    if read -q "choice?Run `brew bundle`? [y/n]:"; then
        echo "Running `brew bundle`..."
        brew bundle
        if [[ $USER = "fushimi" ]] then
        else
            # non-corp dev
            brew install visual-studio-code
            brew install docker docker-compose
            # media
            brew install obs xquartz
            # apps
            brew install bitwarden kindle notion slack
        fi

        # Optional apps
        brew install adobe-creative-cloud coteditor google-cloud-sdk google-japanese-ime
    fi
    
    ;;
esac

wget "https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.696/gcmcore-linux_amd64.2.0.696.deb" -O /tmp/gcmcore.deb
sudo dpkg -i /tmp/gcmcore.deb
git-credential-manager-core configure
