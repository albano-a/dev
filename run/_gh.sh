#!/bin/bash

sudo pacman -S github-cli

if command -v gh &> /dev/null; then
    echo "GitHub CLI installed successfully"
else
    echo "GitHub CLI installation failed"
fi
echo "========================="
gh auth login