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

" for netrw
let g:netrw_liststyle=1 " ファイルツリーの表示形式、1にするとls -laのような表示になります
"let g:netrw_banner=0    " ヘッダを非表示にする
let g:netrw_sizestyle="H" " サイズを(K,M,G)で表示する

"for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeShowHidden = 1

autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
" for ale
" let g:ale_linter_aliases = {'vue': ['css', 'javascript'], 'jsx': ['css', 'javascript'], 'tsx': ['css', 'javascript'], 'typescriptreact': ['css', 'javascript']}
let g:ale_linter_aliases = {'vue': ['css', 'javascript'], 'typescriptreact': ['css', 'javascript']}
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint']
  \}
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['prettier', 'eslint'],
  \   'typescript': ['prettier', 'eslint'],
  \   'css': ['prettier'],
  \   'ruby': ['rubocop'],
  \}

" for vim-gitgutter
let g:gitgutter_terminal_reports_focus=0

" for fzf
set rtp+=~/.fzf

" for vim-lsp
let g:lsp_diagnostics_enabled = 0

"set statusline+=%{fugitive#statusline()}\ %<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set clipboard+=unnamedplus

nnoremap <C-j> :LspDefinition<CR>
nnoremap <C-h> :LspHover<CR>
