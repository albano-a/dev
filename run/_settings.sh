#!/bin/bash

cp "$HOME/personal/dev/wallpaper/"* "$HOME/Pictures/"

# Path for the new custom shortcut
path='/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/'

# Set name, command, and keybinding
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$path name 'Ulauncher Toggle'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$path command 'ulauncher-toggle'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$path binding '<Primary>Return'

gsettings set org.gnome.desktop.background picture-uri "file:///home/aalbano/personal/dev/wallpaper/little_house_night.jpg"
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/aalbano/personal/dev/wallpaper/little_house_night.jpg"
gsettings set org.gnome.desktop.screensaver picture-options 'zoom'

# Add the custom shortcut to GNOME
current=$(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings)
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['$path']"
