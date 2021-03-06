# Installing from AUR
sudo pamac install base-devel git

# Pre Setup
# ------------------------------------------------------------------

# Install Snap
sudo pacman -S snapd -y
sudo systemctl enable --now apparmor.service
sudo systemctl enable --now snapd.apparmor.service
sudo systemctl start snapd # initial start of snapd
sudo systemctl enable snapd # automatic start

# Tweaks
# ------------------------------------------------------------------
sudo pacman -S gnome-tweaks

# Install docker and docker-compose
# ------------------------------------------------------------------
sudo pacman -S docker -y
sudo pacman -S docker-compose -y

sudo systemctl enable docker.service # autostart docker
sudo systemctl start docker.service # initial start

sudo systemctl enable containerd.service # autostart containerd
sudo systemctl start containerd.service # initial start

# Communication Tools
# ------------------------------------------------------------------
sudo pacman -S discord -y
sudo snap install slack
# sudo flatpak install slack -y

# Utilities
# ------------------------------------------------------------------
# sudo pacman -S glances -y # hardware monitoring


# Python
# ------------------------------------------------------------------
sudo pacman -S python-pip

sudo pip install neovim

# Developer Environment
# ------------------------------------------------------------------

# REST client
sudo flatpak install insomnia -y

# Shell
sudo pacman -S neovim -y
sudo pacman -S tmux -y
sudo pacman -S alacritty -y

# Jetbrains
sudo snap install datagrip -y
sudo snap install phpstorm -y
# sudo snap install pycharm -y
# sudo snap install clion -y
# sudo snap install zaproxy -y --classic

# Node version manager
sudo pacman -S nvm -y
source /usr/share/nvm/init-nvm.sh
nvm install stable
nvm use stable
npm install -g neovim

# PHP and Composer
sudo pacman -S php -y
sudo pacman -S composer -y

# sudo pacman -S go # install golang

# terraform
sudo pamac install terraform -y # install terraform
terraform -install-autocomplete

# openstack
# sudo pip install python-openstackclient

# aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Yubikey
# ------------------------------------------------------------------
sudo pacman -S yubikey-manager
systemctl enable pcscd.service
systemctl start pcscd.service

# VPN
# ------------------------------------------------------------------

# Cisco / Juniper
sudo pacman -S openconnect

# ProtonVPN
# sudo pacman -S dialog
# sudo pip install protonvpn-cli

# Reminna Remote Desktop
# ------------------------------------------------------------------
# sudo pacman -S remmina
# sudo pacman -S freerdp # rdp support
# sudo pacman -S remmina-plugin-rdesktop # rdp support
# sudo pacman -S libvncserver # vnc support

# Network Tools
sudo pacman -S dnsutils -y
sudo pacman -S net-tools -y

# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Neovim init
mkdir ~/.config/nvim
cp ../nvim/init.vim ~/.config/nvim/init.vim

# Theme
sudo cp -r ./appearance/Orchis-dark /usr/share/themes/Orchis-dark
suod cp -r ./appearance/Tela-blue /usr/share/icons/Tela-blue
sudo cp -a ./appearance/jm_ttf/. /usr/share/fonts/TTF/

# Copy dotfiles
cp -a ../actual/. ~/
