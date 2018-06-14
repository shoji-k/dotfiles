if &compatible
  set nocompatible
endif
" XDG_CONFIG_HOME
" https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html 
let s:config_dir = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME

let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/dein.vim'
let s:toml_dir = s:config_dir . '/dein'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
  if !isdirectory(s:toml_dir)
    execute '!mkdir -p' s:toml_dir
    execute '!touch ' . s:toml_dir . '/plugins.toml'
    execute '!touch ' . s:toml_dir . '/lazy.toml'
    execute '!touch ' . s:toml_dir . '/neovim.toml'
  endif
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
  if has('nvim')
    call dein#load_toml(s:toml_dir . '/neovim.toml', {'lazy': 1})
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin on
"if-endifなどの対を%で移動できる
runtime macros/matchit.vim
"シンタックスを自動でつける
syntax enable

"バックアップファイルを作るディレクトリ
set backupdir=$HOME/.vimbackup
"スワップファイル用のディレクトリ
set directory=$HOME/.vimbackup
"change current directory auto
set autochdir

"encodings
set encoding=utf-8
set fileencodings=utf-8,cp932
set fileformats=unix,dos,mac

"ハイライトする
set hls
"行数を表示する
set number
"数字を10進数として扱う
set nrformats=
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
"検索を下でとめる
set nowrapscan
"インクリメンタルサーチ
set incsearch

"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"タブを打った時のスペースの数
set shiftwidth=2
set tabstop=2
set softtabstop=2
"set php indent
au BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4 softtabstop=4
"set php indent
"set twig filetype
au BufNewFile,BufRead *.twig set filetype=html

"タブの代わりに空白文字を挿入する
set expandtab

"履歴を絞り込んだ状態で遡る
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

colorscheme desert

set statusline+=%{fugitive#statusline()}\ %<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set clipboard+=unnamedplus

" for ergodox-ez
noremap <C-Up> <C-[>
noremap! <C-Up> <C-[>
noremap <C-✠> <C-[>
noremap! <C-✠> <C-[>

