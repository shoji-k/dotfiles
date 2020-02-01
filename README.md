## start

git clone and initialize submodule

```
$ git clone git@github.com:shoji-k/dotfiles.git
$ cd dotfiles
$ git submodule update --init --recursive
```

for tig

```
$ ln -s here/.tigrc ~/.tigrc
```

for vim

```
$ mkdir $HOME/.vimbackup
$ ln -s here/.vimrc ~/.vimrc
$ ln -s here/.vim ~/.vim
```
