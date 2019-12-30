syntax enable
colorscheme desert

set backupdir=$HOME/.vimbackup "for vim backup
set directory=$HOME/.vimbackup "for vim swap
set autochdir                  "change current directory auto

set encoding=utf-8
set fileencodings=utf-8,cp932
set fileformats=unix,dos,mac

set hls "highlight

set number      "show number of lines
set nrformats=  "数字を10進数として扱う
set list        "タブ文字、行末など不可視文字を表示する
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:% "listで表示される文字のフォーマットを指定する
set nowrapscan  "検索を下でとめる

set smartindent "新しい行を作ったときに高度な自動インデントを行う
set smarttab    "行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set shiftwidth=2
set tabstop=2
set softtabstop=2

"set php indent
au BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4 softtabstop=4
"set twig filetype
au BufNewFile,BufRead *.twig set filetype=html

set expandtab "タブの代わりに空白文字を挿入する

"履歴を絞り込んだ状態で遡る
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"set statusline+=%{fugitive#statusline()}\ %<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set clipboard+=unnamedplus
