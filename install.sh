#!/bin/bash

git submodule init
git submodule update --merge --
#git submodule foreach git checkout master
#git submodule foreach git pull

rm -rf ~/.vim
mkdir -p ~/.vim

cp -R ./vim/* ~/.vim/
cp vimrc ~/.vimrc

rm -rf ~/.vim/bundle/syntastis

