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

for vim-vue and ale plugins

[posva/vim\-vue: Syntax Highlight for Vue\.js components](https://github.com/posva/vim-vue#integration-with-syntastic-or-ale)

```bash
npm i -g eslint eslint-plugin-vue
```

for ale to use prettier

```bash
npm i -g prettier
```

for ale to use rubocop

```bash
gem install rubocop
gem install rubocop-rails
```
