DOTFILES=~/dotfiles

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# fonts
brew tap homebrew/cask-fonts
brew install font-inconsolata font-migu-2m font-menlo

# non-corp dev
brew install visual-studio-code
brew install docker docker-compose

# common dev
brew install wget
brew install coteditor
brew install google-cloud-sdk
brew install jq
brew install exa

# media
brew install ffmpeg
brew install karabiner-elements
brew install imagemagick
brew install blackhole-2ch obs xquartz

# tools
brew install adobe-creative-cloud
brew install the-unarchiver
brew install caffeine
brew install google-japanese-ime

# apps
brew install google-chrome
brew install steam dmm-player epic-games 
brew install bitwarden kindle
brew install notion slack spotify
