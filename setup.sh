#!/bin/sh

DIR=`pwd`

# make backup directory
mkdir ~/.vimbackup

# make symbolic link of .vimrc
n -sf ${DIR}/.vimrc ~/.vimrc
n -sf ${DIR}/.ctags ~/.ctags

mkdir -p ~/.vim/doc/
wget http://jp1.php.net/get/php_manual_ja.tar.gz/from/this/mirror
tar xvzf php_manual_ja.tar.gz
rm -f php_manual_ja.tar.gz
mv ./php-chunked-xhtml ~/.vim/doc

# install refe
gem install refe
bitclust setup --vesions=2.2.2

# install neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
# mkdir -p ~/.vim/bundle
# git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# do NeoBundleInstall on vim

# git hook
# git config --global init.templatedir '~/.git_template'
cp -r .git_template ~/.git_template
