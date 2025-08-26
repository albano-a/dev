#!/bin/bash

set -e

echo "Installing GNOME desktop environment..."
sudo pacman -S --noconfirm gnome gnome-tweaks gnome-browser-connector wget curl

echo "Installing essential GNOME components..."
sudo pacman -S --noconfirm gnome-backgrounds file-roller evince eog

if chmod +x ./services.sh && source ./services.sh; then
    echo "services.sh executed successfully"
else
    echo "Error: Failed to execute services.sh - only GNOME was installed"
    exit 1
fi

echo "Enabling GDM display manager..."
sudo systemctl enable gdm

echo "GNOME installation complete!"
echo "Press Enter to reboot..."
read

reboot