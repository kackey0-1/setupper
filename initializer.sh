#! /bin/sh

# Create symbolic links
mkdir -p $(pwd)/.config
ln -s $(pwd)/.config/nvim ~/.config/nvim
ln -s $(pwd)/.zshrc ~/.zshrc

# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cat ~/.zshrc.pre-oh-my-zsh >> ~/.zshrc

