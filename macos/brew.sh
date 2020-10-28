#!/bin/bash

# ------------------------------------------
# Install Brew
# ------------------------------------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install wget
brew install pkg-config

# ------------------------------------------
# Engines
# ------------------------------------------
brew install node
brew install php
brew install python3
# brew install dotnet-sdk
brew install go

# ------------------------------------------
# Other Utilities
# ------------------------------------------
brew install ripgrep
brew install tokei
brew install tree

# ------------------------------------------
# Developer Utilities
# ------------------------------------------
brew cask install insomnia
brew install terraform
brew install gh
brew install composer
brew install tmux
brew install ansible
brew cask install docker
brew install docker-compose
brew cask install adobe-creative-cloud

# ------------------------------------------
# Security
# ------------------------------------------
brew cask install osxfuse # borgbackup requirement
brew install borgbackup
brew install gnupg
brew install openssl
brew cask install protonvpn
brew cask install ransomwhere
brew cask install oversight
brew install ykman
brew cask install yubico-authenticator

# ------------------------------------------
# Entertainment
# ------------------------------------------
brew cask install spotify

# ------------------------------------------
# Browsers
# ------------------------------------------
brew cask install caskroom/versions/firefoxdeveloperedition
brew cask install firefox
brew cask install google-chrome

# ------------------------------------------
# Communication
# ------------------------------------------
brew cask install discord
brew cask install slack
brew cask install signal

# ------------------------------------------
# Editors, IDE
# ------------------------------------------
brew install neovim
brew cask install sublime-text
brew cask install pycharm
brew cask install phpstorm
brew cask install datagrip

# ------------------------------------------
# Terminal
# ------------------------------------------
brew install zsh
brew cask install iterm2

# ------------------------------------------
# Typography
# ------------------------------------------
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew cask install font-jetbrains-mono

# ------------------------------------------
# Emacs
# ------------------------------------------
# brew tap d12frosted/emacs-plus
# brew install emacs-plus --HEAD --with-natural-title-bars
# brew linkapps emacs-plus
