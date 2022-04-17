#!/bin/bash

# Appearance pacakges

#Ms-fonts
sudo apt install ttf-mscorefonts-installer

# Layan Cursors
mkdir -p $HOME/build
cd "$HOME/build"
git clone https://github.com/vinceliuice/Layan-cursors
cd Layan-cursors
sudo ./install.sh

# Background 
wget "https://raw.githubusercontent.com/RaphaeleL/DebianSetup/main/background.jpg"
feh --bg-fill background.jpg


