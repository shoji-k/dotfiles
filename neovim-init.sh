#!/bin/sh

DIR=`pwd`

# rm -rf ~/.config/nvim ~/.config/dein
mkdir -p ~/.config/nvim ~/.config/dein
ln -s ${DIR}/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ${DIR}/.config/dein/plugins.toml ~/.config/dein/plugins.toml
ln -s ${DIR}/.config/dein/lazy.toml ~/.config/dein/lazy.toml
ln -s ${DIR}/.config/dein/neovim.toml ~/.config/dein/neovim.toml

# inside nvim
# :call dein#install()
# :UpdateRemotePlugins

# add .bashrc, neovim needs this
#export TERM=xterm-color
