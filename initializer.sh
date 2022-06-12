#! /bin/sh

# Install OhMyZsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
cat ~/.zshrc.pre-oh-my-zsh >> ~/.zshrc
# Create symbolic links
ln -s `pwd`/.config/nvim ~/.config/nvim
ln -s `pwd`/.zshrc ~/.zshrc


