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

# zsh 
git clone https://github.com/RaphaeleL/.dotfiles d
cp .dotfiles/.zshrc ~/
ch-s /usr/bin/zsh 
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
cp .dotfiles/own-theme.zsh-theme .oh-my-zsh/themes 

# wallpapers
git clone https://gitlab.com/dwt1/wallpapers


