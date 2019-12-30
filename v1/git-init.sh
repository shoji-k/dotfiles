#/bin/bash

git config --global user.name (name)
git config --global user.email (email address)
git config --global color.ui auto
git config --global alias.ch checkout
git config --global alias.co commit
git config --global alias.st status
git config --global alias.br branch
git config --global core.quotepath off
git config --global core.editor vim
git config --global push.default simple
git config --global commit.verbose true
git config --global init.templatedir ~/.git_template

# after preparing gpg key
git config --global user.signingkey (key)
