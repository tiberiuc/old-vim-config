#!/bin/bash

git submodule init
git submodule update

cp -R ./.vim ~/
cp .vimrc ~/

