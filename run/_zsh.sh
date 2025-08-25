#!/bin/bash

sudo pacman -S zsh
hash -r
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
cp ~/personal/dev/.zshrc ~/.zshrc

if command -v zsh &> /dev/null; then
    echo "Zsh installed successfully"
    echo $SHELL
else
    echo "Zsh installation failed"
fi