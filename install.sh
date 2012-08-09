#!/bin/bash

git submodule init
git submodule update

rm -rf ~/.vim
mkdir -p ~/.vim

cp -R ./vim/* ~/.vim/
cp vimrc ~/.vimrc

