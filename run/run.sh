#!/bin/bash

echo "Enabling multilib repository..."
sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf && sudo pacman -Sy

echo "Updating system..."
sudo pacman -Syu --noconfirm


# Run services script
./services.sh

# Run gnome script
./before/_gnome.sh