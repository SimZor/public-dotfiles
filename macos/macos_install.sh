#!/bin/bash

# -------------------------------------------------------
# Custom macOS Settings
# -------------------------------------------------------
read -p "Do you wish to update macOS settings to custom ones? (y/n)" $yn
if [ "$yn" == "y" ]
	then
		sh macos/macos_settings.sh
	fi

# -------------------------------------------------------
# Install xcode
# -------------------------------------------------------
read -p "Do you wish to install xcode? (y/n)" $yn
if [ "$yn" == "y" ]
	then
		xcode-select --install
	fi

# -------------------------------------------------------
# Install homebrew, brew and brew cask packages and fonts that are via brew
# -------------------------------------------------------
sh macos/brew.sh

# -------------------------------------------------------
# Do the common install
# -------------------------------------------------------
sh common/common_install.sh

# Use new rc's
source ~/.bashrc
source ~/.zshrc
