# Prepare
sudo apt update
sudo apt upgrade -y

# Install PIP 3
sudo apt install python3-pip -y

sudo apt install wget -y
sudo apt install curl -y
sudo apt install ansible -y
sudo apt install tmux -y
sudo apt install gnupg -y
sudo apt install php -y
sudo apt install composer -y
sudo apt install ripgrep -y
sudo apt install tree -y
sudo apt install openssl -y
sudo apt install borgbackup -y

# ZSH
sudo apt install zsh -y

# Install neovim
sudo apt install neovim -y

# Install emacs
sudo apt install emacs -y

# fd-find (improved file indexing performance for some commands)
sudo apt install fd-find

# Install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# TODO: Install Github CLI github/gh/gh

# Install Cargo (Rust)
sudo apt install cargo -y

# Install Tokei
cargo install --git https://github.com/XAMPPRocky/tokei.git

# Unzip Tool
sudo apt install unzip -y

# Install terraform
wget https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip
unzip terraform_0.12.18_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -install-autocomplete  # Install autocomplete

# Add Microsoft repository key and feed
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Prepare .NET Core install
sudo apt update
sudo apt install apt-transport-https -y

# Install .NET Core SDK
sudo apt update
sudo apt install dotnet-sdk-3.1 -y

# Install ASP.NET Core runtime
sudo apt update
sudo apt install aspnetcore-runtime-3.1 -y

# Install .NET Core runtime
sudo apt update
sudo apt install dotnet-runtime-3.1 -y
