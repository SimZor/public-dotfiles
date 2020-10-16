echo "Installing your environment"

# Install packages
echo "Installing apt packages..."
sh linux/apt.sh

# Install Python Dependencies
echo "Installing pip packages"
sh python/install.sh

# Default Eslint RC
cp javascript/eslintrc.json ~/.eslintrc.json

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install tmux tpm (plugin manager)
# Install plugins by using prefix + I
echo "Installing TMUX Plugin Manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install vim-plug
echo "Installing vim plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install fonts
echo "Installing fonts"
sh typography/install_typography.sh

# Install dotfiles
echo "Installing dotfiles..."

echo "Installing .bashrc"
cp bash/bashrc ~/.bashrc

echo "Installing .zshrc"
cp zsh/zshrc ~/.zshrc

echo "Installing .gitconfig"
cp git/gitconfig ~/.gitconfig

echo "Installing .tmux.conf"
cp tmux/conf ~/.tmux.conf

echo "Installing .tern-config"
cp tern-config ~/.tern-config

echo "Installing init.vim"
mkdir ~/.config
mkdir ~/.config/nvim
cp neovim/init.vim ~/.config/nvim/init.vim

# echo "Setting default shell to ZSH"
echo "Setting default shell to ZSH"
chsh -s /usr/bin/zsh $USER
