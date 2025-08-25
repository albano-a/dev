#!/bin/bash

git clone https://aur.archlinux.org/ulauncher.git ~/personal/dev/git_repos/ulauncher && cd ~/personal/dev/git_repos/ulauncher && makepkg -is

cp -r ~/personal/dev/ulauncher ~/.config/