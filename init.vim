"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath=&runtimepath
"source ~/.vimrc


set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set ma
syntax on
set showcmd
set ruler
set showmatch
set sw=2
set hidden
set relativenumber
set showcmd
set completeopt+=menuone
set completeopt+=preview
set completeopt+=noselect
set nocompatible 

call plug#begin('~/.vim/plugged/')
Plug 'neoclide/coc.nvim', {'branch' : 'release' }

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-webdevicons'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" IDE
" Move easyly cross the code with looking for words
Plug 'easymotion/vim-easymotion'
" The tre of files
Plug 'scrooloose/nerdtree'
" Move in the subwindows with ctrl plus hjkl
Plug 'christoomey/vim-tmux-navigator'
" emmet <3
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'arzg/vim-colors-xcode'
" Airline
Plug 'vim-airline/vim-airline'
" autocomplete
"Plug 'vim-scripts/AutoComplPop'
"Plug 'codota/tabnine-vim'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
call plug#end()
colorscheme onedark
"Remap keys
let mapleader=" "
inoremap jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-b> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Left>
inoremap <C-d> <Delete>
inoremap <silent><C-o> <End><CR>
"inoremap <C-h> <Left<BS>>
inoremap <silent><c-h> <Left>
imap <silent><A-l> <End>
imap <silent><A-h> <Left>
imap <silent><C-v> <C-r>*
nmap <Leader>s <Plug>(easymotion-s2)

vmap ;; <plug>NERDCommenterToggle
nmap ;; <plug>NERDCommenterToggle

noremap <silent><C-b> :NERDTreeToggle<CR>
nmap <Leader>nd :w !node<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
noremap c ciw
inoremap <silent><expr> <c-space> coc#refresh()
noremap <silent>J dd<CR>P
noremap <silent>K ddkP
noremap <silent><a-J> ddkpp

"Plugins and others confing
let g:coc_global_extensions = [
 \'coc-snippets',
 \'coc-tsserver',
 \'coc-eslint',
 \'coc-prettier',
 \'coc-json',
 \'coc-vetur',
 \'coc-emmet',
 \'coc-css',
 \]


let g:use_emmet_complete_tag = 1
let g:kite_supported_languages = []
let g:airline_poweline_fonts = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDTreeIgnore = ['^node_modules$']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = " "
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

filetype plugin indent on
