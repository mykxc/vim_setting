#!/bin/bash 

sudo apt-get install vim
sudo apt-get install ctags
sudo apt-get install cscope

brew install vim
brew install ctags 
brew install cscope

cp mkcscope.sh /usr/bin/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
cp .vimrc ~/ 
vim -c 'PluginInstall' -c 'qa!'
git clone https://github.com/vim-scripts/SrcExpl.git 
git clone https://github.com/vim-scripts/Trinity.git
git clone https://github.com/szw/vim-g.git

mkdir ~/.vim/plugin
cp -r SrcExpl/plugin/srcexpl.vim ~/.vim/plugin/ 
cp -r Trinity/plugin/trinity.vim ~/.vim/plugin/ 
cp -r vim-g/plugin/g.vim ~/.vim/plugin/ 

mkdir ~/.vim/colors
cp -r ./colors ~/.vim/colors
