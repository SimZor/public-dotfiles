# --------------------------------------------------------
# Prerequisites
# --------------------------------------------------------

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# --------------------------------------------------------
# Packages
# --------------------------------------------------------

# Install Communication Software
choco install discord
choco install slack
choco install teamspeak

# Hardware Helpers
choco install cpu-z
choco install hwinfo.install

# Productivity Tools
choco install notion

# Miscellanious Tools
choco install 7zip.install

# Development tools
choco install git
choco install sourcetree
choco install visualstudio2019community

# Gaming
choco install steam

# Web
choco install firefox

# Entertainment
choco install spotify

# Security
choco install yubikey-manager
choco install yubikey-authenticator

# Firewall
choco install tinywall

# Install powerline fonts
git clone https://github.com/powerline/fonts.git
.\install.ps1

# --------------------------------------------------------
# Windows Subsystem for Linux
# --------------------------------------------------------

# Install Windows Subsystem for Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-2004 -OutFile Ubuntu.appx -UseBasicParsing
Add-AppxPackage .\Ubuntu.appx
