#!/bin/sh

DIR=`pwd`

# make backup directory
mkdir ~/.vimbackup

# make symbolic link of .vimrc
ln -sf ${DIR}/.vimrc ~/.vimrc

# install neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# do NeoBundleInstall on vim
