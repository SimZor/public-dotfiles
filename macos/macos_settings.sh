#!/bin/bash

# Always show scrollbars (possible values: `WhenScrolling`, `Automatic` and `Always`)
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Show all files in Finder
# defaults write com.apple.finder AppleShowAllFiles true;

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Set Desktop as the default location for new Finder windows due to security concerns
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Don’t animate opening applications from the dock
defaults write com.apple.dock launchanim -bool false

# Changing pages in Launchpad (remove animation)
defaults write com.apple.dock springboard-page-duration -float 0

# Showing and hiding Launchpad (remove animation)
# defaults write com.apple.dock springboard-show-duration -float 0
# defaults write com.apple.dock springboard-hide-duration -float 0

# Remove the auto-hiding dock delay
defaults write com.apple.dock autohide-delay -float 0

# Showing and hiding Mission Control, command+numbers
defaults write com.apple.dock expose-animation-duration -float 0

# Minimize/expand windows using scale effect
defaults write com.apple.dock mineffect scale

# Remove the animation when hiding/showing the dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
