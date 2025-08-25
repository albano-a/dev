#!/bin/bash

sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf && sudo pacman -Sy
sudo pacman -Syu
sudo pacman -S --noconfirm gnome gnome-tweaks gnome-browser-connector wget curl

if chmod +x ./chmod_all.sh && source ./chmod_all.sh; then
    echo "chmod_all.sh executed successfully"
else
    echo "Error: Failed to execute chmod_all.sh - only GNOME was installed"
    exit 1
fi

read -p "Press Enter to continue with system setup..."

sudo systemctl enable gdm
reboot

