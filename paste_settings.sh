#!/bin/bash

# Ensure directories exist
mkdir -p ~/.config/nvim
mkdir -p ~/.config/ghostty

# Copy with overwrite confirmation
cp -r -i ~/personal/dev/nvim/* ~/.config/nvim/
cp -r -i ~/personal/dev/ghostty/* ~/.config/ghostty/

cp -i ~/personal/dev/.zshrc ~/.zshrc
cp -i ~/personal/dev/.bashrc ~/.bashrc