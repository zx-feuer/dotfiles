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

  syntax on
  let mapleader=' '
  let maplocalleader=' '
  filetype plugin indent on
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd BufWritePre * :%s/\s\+$//e

" -------------------------------
" Research by :help <setting>
" -------------------------------
"

  set autoindent
  set autoread
  set background=dark
  set backspace=indent,eol,start
  set clipboard=unnamedplus
  set cursorline
  set encoding=utf-8
  set expandtab
  set hidden
  set hlsearch
  set ignorecase
  set incsearch
  set colorcolumn=80
  set number
  set nobackup
  set nocompatible
  set noerrorbells
  set noswapfile
  set nowrap
  set shiftwidth=2
  set signcolumn=yes
  set smartindent
  set smarttab
  set softtabstop=2
  set splitbelow
  set splitright
  set tabstop=2
  set undodir=~/.vim/undodir
  set undofile
  set updatetime=300
  set viminfo+=n~/.vim/viminfo
  set wildmenu
  set wildmode=longest,list,full

"
" SHORTCUT
"

  nnoremap <leader>sv :source ~/.vimrc<cr>
  nnoremap <leader>vs :vsplit ~/.vimrc<cr>
  nnoremap <leader>w :w<cr>
  nnoremap <leader>q :q<cr>
  nnoremap <leader>e :Vex<cr>
  nnoremap <c-h> <c-w>h
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-l> <c-w>l

"
" PLUGIN
"

  call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ap/vim-css-color'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  call plug#end()

  colorscheme nord
  let g:airline_theme='nord'
