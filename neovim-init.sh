#!/bin/sh

mkdir -p ~/.config/nvim
mkdir -p ~/.config/dein
ln -s .config/nvim ~/.config/nvim
ln -s .config/dein ~/.config/dein

# inside nvim
# :call dein#install()
# :UpdateRemotePlugins

