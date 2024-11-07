#!/usr/bin/env bash

# Import GNOME Terminal profiles from dconf file
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/.dotfiles/gnome-terminal/gnome-terminal-profiles.dconf
