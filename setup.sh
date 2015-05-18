#!/bin/sh

DIR=`pwd`

# make backup directory
mkdir ~/.vimbackup

# make symbolic link of .vimrc
n -sf ${DIR}/.vimrc ~/.vimrc
n -sf ${DIR}/.ctags ~/.ctags

mkdir ~/.vim/doc/
wget http://jp1.php.net/get/php_manual_ja.tar.gz/from/this/mirror
tar xvzf mirror
rm mirror
mv ./php-chunked-xhtml ~/.vim/doc

# install neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
# mkdir -p ~/.vim/bundle
# git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# do NeoBundleInstall on vim
