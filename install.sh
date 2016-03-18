#!/bin/bash

git submodule init
git submodule update
git pull --recurse-submodules origin master
#git submodule update --rebase --
#git submodule foreach git checkout master
#git submodule foreach git reset --hard origin/master

rm -rf ~/.vim
mkdir -p ~/.vim
mkdir -p ~/.config/nvim

cp -R ./vim/* ~/.vim/
cp vimrc ~/.vimrc
cp vimrc ~/.config/nvim/init.vim

#rm -rf ~/.vim/bundle/syntastis

