#!/bin/bash

sudo pacman -S --noconfirm zsh zsh-syntax-highlighting
hash -r
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
cp ~/personal/dev/.zshrc ~/.zshrc



#echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

if command -v zsh &> /dev/null; then
    echo "Zsh installed successfully"
    echo $SHELL
else
    echo "Zsh installation failed"
fi