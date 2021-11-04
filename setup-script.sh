cd ~
sudo apt install vim-athena vim-addon-manager vim-airline* git -y
git clone git@github.com:Zeus-HackOlympus/dotfiles.git
chmod 400 ./dotfiles/.* 
mv ./dotfiles/.* ~
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +PlugInstall +qall
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
sudo apt install ./sublime-text_build-3211_amd64.deb -y
cd ~/Downloads
sudp wget https://out7.hex-rays.com/files/idafree76_linux.run
sudo chmod +x ./idafree* 
./idafree* 
. ~/.bashrc
