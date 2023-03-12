## start

```
$ git clone git@github.com:shoji-k/dotfiles.git
$ cd dotfiles
```

for git

```
$ ln -s $(pwd)/.gitattributes ~/.gitattributes
$ ln -s $(pwd)/.gitignore ~/.gitignore
```

for bash

```
$ ln -s $(pwd)/.bashrc-jammy ~/.bashrc
```

for tig

```
$ ln -s $(pwd)/.tigrc ~/.tigrc
```

for vim

```
$ mkdir $HOME/.vimbackup
$ ln -s $(pwd)/.vimrc ~/.vimrc
```

install fzf
[junegunn/fzf: A command\-line fuzzy finder](https://github.com/junegunn/fzf)

install rg
[BurntSushi/ripgrep: ripgrep recursively searches directories for a regex pattern](https://github.com/BurntSushi/ripgrep)
