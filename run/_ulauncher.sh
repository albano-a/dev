#!/bin/bash

git clone https://aur.archlinux.org/ulauncher.git && cd ulauncher && makepkg -is

cp ../ulauncher ~/.config/