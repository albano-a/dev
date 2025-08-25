#!/bin/bash

sudo pacman -S --noconfirm github-cli

if command -v gh &> /dev/null; then
    echo "GitHub CLI installed successfully"
else
    echo "GitHub CLI installation failed"
fi