"        _           
" __   _(_)_ __ ___  
" \ \ / / | '_ ` _ \ 
"  \ V /| | | | | | |
"   \_/ |_|_| |_| |_|
"                    

" Wed 29 Jul 2020 06:28:10 PM -03
" -------------------------------
" # ~/.vimrc
" -------------------------------

"
" EDITOR
"

syntax on
let mapleader=' '
let maplocalleader=' '
filetype plugin indent on
colorscheme industry
set background=dark
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set number

"
" SHORTCUT
"

nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>vs :vsplit ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
