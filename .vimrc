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
"  set cursorline
  set encoding=utf-8
  set expandtab
  set guicursor=
  set hidden
  set ignorecase
  set incsearch
"  set colorcolumn=80
  set number
  set nobackup
  set nocompatible
  set noerrorbells
  set nohlsearch
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

  inoremap <c-c> <esc>
  nnoremap <c-h> <c-w>h
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-l> <c-w>l
  nnoremap <leader>h :wincmd h<cr>
  nnoremap <leader>j :wincmd j<cr>
  nnoremap <leader>k :wincmd k<cr>
  nnoremap <leader>l :wincmd l<cr>
  nnoremap <leader>u :UndotreeShow<cr>
  nnoremap <leader>sv :source ~/.vimrc<cr>
  nnoremap <leader>vs :vsplit ~/.vimrc<cr>
  nnoremap <leader>w :w<cr>
  nnoremap <leader>q :q<cr>
  nnoremap <leader>e :Vex<cr>
  nnoremap <leader>to :!touch<space>
  nnoremap <leader>mk :!mkdir<space>
  nnoremap <leader>mv :!mv<space>%<space>
  nnoremap <leader>rg :!%s//gI<left><left><left>
  nnoremap <leader>pi :PlugInstall<cr>
  let g:netrw_sort_sequence='[\/]$,*'
  let g:netrw_list_style=1
  let g:netrw_banner=0
  let g:netrw_browse_split=2
  let g:netrw_winsize=25

"
" PLUGIN
"

  call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-dispatch'
    Plug 'SirVer/ultisnips'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'honza/vim-snippets'
    Plug 'lervag/vimtex'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  call plug#end()

  colorscheme nord
  let g:airline_theme='nord'
  let g:gitgutter_map_keys=0
  let g:gitgutter_map_keys=0
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
  let NERDTreeShowHidden=1
  let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
  let $FZF_DEFAULT_OPTS='--reverse'

  map <C-n> :NERDTreeToggle<CR>
  autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd BufWritePost * GitGutter
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
