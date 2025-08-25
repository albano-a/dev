#!/bin/bash

sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf && sudo pacman -Sy
sudo pacman -Syu
sudo pacman -S --noconfirm gnome gnome-tweaks gnome-browser-connector wget curl



sudo systemctl enable gdm
sudo systemctl start gdm
reboot

