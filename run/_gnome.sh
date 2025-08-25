#!/bin/bash

sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf && sudo pacman -Sy
sudo pacman -Syu
sudo pacman -S --noconfirm gnome gnome-tweaks gnome-browser-connector wget curl

chmod +x ./chmod_all.sh
source ./chmod_all.sh

sudo systemctl enable gdm
reboot

