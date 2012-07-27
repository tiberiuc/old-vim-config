#!/bin/bash

git submodule init
git submodule update

cp -R ./vim ~/.vim/
cp .vimrc ~/.vimrc

