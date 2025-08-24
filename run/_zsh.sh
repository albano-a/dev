#!/bin/bash

sudo pacman -S zsh
hash -r
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if command -v zsh &> /dev/null; then
    echo "GitHub CLI installed successfully"
else
    echo "GitHub CLI installation failed"
fi