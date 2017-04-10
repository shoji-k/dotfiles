"netrwプラグインをロードする
set nocompatible
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

"タブの代わりに空白文字を挿入する
set expandtab
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"タブを打った時のスペースの数
set shiftwidth=2
set softtabstop=2
"set php indent
au BufNewFile,BufRead *.php set expandtab tabstop=4 shiftwidth=4

"履歴を絞り込んだ状態で遡る
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
