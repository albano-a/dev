#!/bin/bash

sudo pacman -S --noconfirm zsh zsh-syntax-highlighting
hash -r
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
cp ~/personal/dev/.zshrc ~/.zshrc

if command -v zsh &> /dev/null; then
    echo "Zsh installed successfully"
    echo $SHELL
else
    echo "Zsh installation failed"
fi