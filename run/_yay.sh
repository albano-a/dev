#!/bin/bash

# It installs yay and then installs other packages from it

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git ~/personal/dev/git_repos/yay
cd ~/personal/dev/git_repos/yay
makepkg -si

if pacman -Qq visual-studio-code-bin &> /dev/null; then
    echo "Visual Studio Code is already installed."
    echo "Version"
    yay -Q visual-studio-code-bin
    echo "Checking for updates..."
    yay -Qu visual-studio-code-bin
else
    echo "Installing Visual Studio Code..."
    yay -S visual-studio-code-bin --answerclean All --answerdiff None
fi

yay -S --noconfirm zen-browser-bin --answerclean All --answerdiff None
