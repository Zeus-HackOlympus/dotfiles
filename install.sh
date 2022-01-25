#!/usr/bin/env sh

######################################################################
# @author      : HackOlympus (zeus@hackolympus)
# @file        : install
# @created     : Monday Jan 24, 2022 06:29:26 IST
#
# @description : install script for dotfiles  
######################################################################

sudo apt-get update && sudo apt-get upgrade 
sudo apt-get install wget curl git vlc python3 python3-pip vim vim-airline* gcc g++-10 fonts-powerline binutils gdb build-essential binwalk -y 
wget "https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip" -O ~/Downloads/hack.zip
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O ~/Downloads/chrome.deb
wget "https://discord.com/api/download?platform=linux&format=deb" -O  ~/Downloads/discord.deb
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O ~/Downloads/code.deb 
sudp wget https://out7.hex-rays.com/files/idafree76_linux.run
chmod +x ~/Downloads/*
sudo apt install ~/Downloads/*.deb -y 
sudo apt-get install google-chrome-stable discord -y 

# sublime installation 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install sublime-text -y 

# spotify installation 
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y 

git clone https://github.com/Zeus-HackOlympus/dotfiles ~/dotfiles

mv ~/dotfiles/.* ~ 

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PluginInstall +PlugInstall +qall!
~/Downloads/idafree* 

pip3 install pwntools z3-solver pycryptodome 

bash -c  "$(wget -qO- https://git.io/vQgMr)" 

printf "\n\n❗❗add and update ssh keys clone CP, C and Blog Folder❗❗\n""
echo "done!!" 

