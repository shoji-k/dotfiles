#/bin/bash

#./neovim-init.sh
#
DIR=`pwd`
#ln -sf ${DIR}/.ctags ~/.ctags
#cp -r .git_template ~/.git_template

#ln -sf ${DIR}/.bashrc-xenial ~/.bashrc

mkdir ~/.config
ln -sf ${DIR}/.config/dein ~/.config/dein
ln -sf ${DIR}/.config/nvim ~/.config/nvim
