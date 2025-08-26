#!/bin/bash


pkgs=(
    steam lutris wine winetricks qt5-tools
    libreoffice-still
    htop btop
    gimp
    obsidian
    cmake
    vlc
    discord
    qbittorrent
    nvim
    ttf-cascadia-code-nerd
    tmux
    bitwarden
    bitwarden-cli
    ghostty
    github-cli
    neofetch
)

sudo pacman -S --noconfirm "${pkgs[@]}"

cfg="$HOME/.config"
dev="$HOME/personal/dev"

cp -r "$dev/nvim" "$cfg/"
cp "$dev/.tmux.conf" "$HOME/"
cp -r "$dev/ghostty" "$cfg/"

echo "Installing NodeJS"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
. "$HOME/.nvm/nvm.sh"
nvm install 24

echo "############ Checking Node Installation ############"
echo "NODE version -> $(node -v)"
echo "NPM version -> $(npm -v)"
echo "####################################################"