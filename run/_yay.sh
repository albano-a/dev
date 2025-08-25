#!/bin/bash

set -e

dev="$HOME/personal/dev"
cfg="$HOME/.config"
yay_dir="$dev/git_repos/yay"

aur_pkgs=(
    visual-studio-code-bin
    zen-browser-bin
    ulauncher
)

install_yay() {
    if command -v yay &> /dev/null; then
        echo "yay already installed"
        return
    fi
    
    echo "Installing yay..."
    sudo pacman -S --needed --noconfirm git base-devel
    
    mkdir -p "$dev/git_repos"
    git clone https://aur.archlinux.org/yay.git "$yay_dir"
    cd "$yay_dir"
    makepkg -si --noconfirm
    cd - > /dev/null
}

install_aur_packages() {
    for pkg in "${aur_pkgs[@]}"; do
        if pacman -Qq "$pkg" &> /dev/null; then
            echo "$pkg already installed - $(yay -Q "$pkg")"
        else
            echo "Installing $pkg..."
            yay -S --noconfirm "$pkg" --answerclean All --answerdiff None
        fi
    done
}

install_yay
install_aur_packages

cp -r "$dev/ulauncher" "$cfg/"

echo "AUR packages installed successfully"

echo "Press Enter to continue..."
read