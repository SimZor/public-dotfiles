#!/bin/bash

if [ "$(uname -s)" == "Darwin" ]
	then
		echo "Setting up environment and dotfiles for macOS"
		sh macos/macos_install.sh
	else
		echo "Setting up environment and dotfiles for Linux"
		sh linux/install_linux.sh
	fi
