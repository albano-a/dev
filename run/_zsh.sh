#!/bin/bash

set -euo pipefail

sep="<======================================================>"
echo "$sep"
echo "Setting up Zsh with Oh My Zsh and Catppuccin theme..."

base_dir="$HOME/personal/dev"
repos_dir="$base_dir/git_repos"
theme_repo="$repos_dir/zsh-syntax-highlighting"

# ensure dependencies
for dep in pacman curl git; do
    if ! command -v "$dep" &>/dev/null; then
        echo "✗ Required command '$dep' not found. Aborting."
        exit 1
    fi
done

# install packages
sudo pacman -S --noconfirm zsh zsh-syntax-highlighting

# oh-my-zsh unattended install
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# clone theme repo (if not exists)
if [[ ! -d "$theme_repo" ]]; then
    git clone https://github.com/catppuccin/zsh-syntax-highlighting.git "$theme_repo"
else
    echo "✓ Theme repo already cloned at $theme_repo"
fi

hash -r

# set zsh as default shell
zsh_path=$(command -v zsh)
if chsh -s "$zsh_path"; then
    echo "✓ Default shell set to $zsh_path"
else
    echo "✗ Failed to change default shell"
    exit 1
fi

# copy .zshrc from personal/dev
cp -v "$base_dir/.zshrc" "$HOME/.zshrc"

# copy Catppuccin theme into ~/.zsh/
mkdir -p "$HOME/.zsh"
cp -v "$theme_repo/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh" "$HOME/.zsh/"

# verify
if command -v zsh &>/dev/null; then
    echo "✓ Zsh installation completed"
    echo "Current shell: $SHELL"
else
    echo "✗ Zsh installation failed"
    exit 1
fi

echo "$sep"
