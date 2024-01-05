" ===> init vim <===

"let &packpath=&runtimepath
"let &packpath=&runtimepath
"source ~/.vimrc

" ===> EDITOR SETTINGS <===
set nocompatible 
set number
set mouse=a
set clipboard=unnamed
syntax on
set showcmd
set ruler
set showmatch
set et
set sw=2
set hidden
set relativenumber
set scrolloff=16
set completeopt=menuone,noinsert,noselect
set path+=**


set wildignore+=**/node_modules/**
set wildignore+=node_modules/**
set wildignore+=node_modules/**/*

set nobackup
set nowritebackup

set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set hlsearch
set hlsearch
set infercase

filetype plugin indent on
filetype on
filetype indent on

let mapleader=" "
set cursorline

set formatoptions-=cro " no add comment after linebreak
autocmd FileType * set formatoptions-=cro

"folding
set foldmethod=indent
set foldlevel=4
"set foldclose=all 

"hi cursorline cterm=none term=none
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"highlight CursorLine guibg=#303000 ctermbg=234
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
