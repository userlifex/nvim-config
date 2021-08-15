"let &packpath=&runtimepath
"let &packpath=&runtimepath
"source ~/.vimrc
set nocompatible 
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
"set ruler
set showmatch
set sw=2
set hidden
set relativenumber
"set exrc
"set nohlsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
	    
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=node_modules/**
set wildignore+=node_modules/**/*
set termguicolors 
    


call plug#begin('~/.vim/plugged/')


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'neoclide/coc.nvim', {'branch' : 'release' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'larsbs/vimterial_dark'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomasr/molokai'
"Plug 'ryanoasis/vim-webdevicons'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

Plug 'gko/vim-coloresque'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" IDE
" Move easyly cross the code with looking for words
Plug 'scrooloose/nerdtree'

" Move in the subwindows with ctrl plus hjkl
Plug 'christoomey/vim-tmux-navigator'
" emmet <3
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"Plug 'arzg/vim-colors-xcode'
Plug 'chrisbra/Colorizer'
 "Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'pangloss/vim-javascript'
"for esling
"Plug 'w0rp/ale'
"
"for test
Plug 'vim-test/vim-test'

"Ident
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
call plug#end()
colorscheme gruvbox
"colorscheme molokai
"let g:molokai_original = 1

"let g:rehash256 = 1
"highlight Normal guibg=none
"Remap keys
let mapleader=" "

" Vim
let g:indentLine_color_term = 239

let g:indentLine_char = '|'
"INSERT maps
inoremap jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-b> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Left>
inoremap <C-d> <Delete>
inoremap <silent><C-o> <End><CR>
inoremap <silent><c-h> <Left>
"inoremap <C-p> <esc>:find 
inoremap <silent><expr> <c-space> coc#refresh()
imap <silent><A-l> <End>
imap <silent><A-h> <Left>
imap <silent><C-v> <C-r>*

"iunmap <c-indent>
"inoremap <silent><C><tab> <esc><esc>:b<space>
"NORMAL mapjis
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nd :w !node<CR>
nmap <Leader>w :w<CR>
nmap <silent>qq :q<CR>
nmap <Leader>wq :wq<CR>
nmap ;; <plug>NERDCommenterToggle
nmap <Leader>vi :so ~/.vimrc<cr>
nnoremap <leader><space> :call NERDTreeToggleAndRefresh()<CR>zz
nmap <Leader>co :Colors<cr>

function NERDTreeToggleAndRefresh()
  if g:NERDTree.IsOpen()
    :NERDTreeToggle
  else 
    :NERDTreeFind
  endif
  :NERDTreeRefreshRoot
endfunction	      		       

"noremap <silent><C-b> :NERDTreeToggle<CR>
"noremap <silent><C-w> :NERDTreeFind<CR> 
"noremap <C-n> :b<space>
noremap <TAB> :Buffers<CR>
"noremap <TAB> :bjh<space>
"noremap <silent><c-l> :bnext<cr>
"BUFFER CONTROLS
"noremap <silent>L :bnext<cr>
"noremap <silent>H :bprevious<cr>
noremap <silent>ww :bd<cr>
noremap <silent><C-o> <C-^>
"up and down lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

noremap c ciw
noremap <silent>J yyp

"noremap <C-p> :find<space> 
noremap <C-p> :GFiles<CR>
noremap <A-p> :Files<CR>

noremap <silent>ss :wall<CR>
noremap <silent>S :w<CR>
"noremap <silent><c-l> ^I
"noremap <silent>ff :Prettier<CR>
noremap <silent>fd :CocCommand prettier.formatFile<cr> 
noremap <silent>ff :Prettier<cr> 
noremap <silent>fs :CocCommand eslint.executeAutofix<cr> 
nmap <leader>f :CocCommand prettier.formatFile<cr> 
noremap <silent>L <end>
noremap <silent>H <home>
noremap <silent>tt ea


" these "Ctrlmappings" work well when Caps Lock is mapped to Ctrl
"nmap <silent>tn :TestNearest<CR>
nmap <silent>tf :w<cr>:TestFile<CR>
nmap <silent>ts :wall<cr>:TestSuite<CR>
"nmap <silent>tl :TestLast<CR>
"nmap <silent>tg :TestVisit<CR>

"VISUAL maps
vmap ;; <plug>NERDCommenterToggle
vnoremap c di
vnoremap <C-c> "+y
"Plugins and others confing
let g:coc_global_extensions = [
 \'coc-snippets',
 \'coc-tsserver',
 \'coc-json',
 \'coc-vetur',
 \'coc-emmet',
 \'coc-css',
 \'coc-angular',
 \'coc-eslint',
 \'coc-prettier',
 \]



let g:use_emmet_complete_tag = 1
let g:kite_supported_languages = []
let g:airline_poweline_fonts = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden=1
let g:airline_theme='base16_monokai'
let g:NERDTreeWinPos = "right"
let g:javascript_plugin_jsdoc = 1
"qq
"

"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'

"let g:ale_fix_on_save = 1
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
vnoremap ( d<esc>i(
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = " "
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

filetype plugin indent on
"FZF CON qG
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Label'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" Terminal colors for seoul256 color scheme
    "if has('nvim')
      "let g:terminal_color_0 = '#4e4e4e'
      "let g:terminal_color_1 = '#d68787'
      "let g:terminal_color_2 = '#5f865f'
      "let g:terminal_color_3 = '#d8af5f'
      "let g:terminal_color_4 = '#85add4'
      "let g:terminal_color_5 = '#d7afaf'
      "let g:terminal_color_6 = '#87afaf'
      "let g:terminal_color_7 = '#d0d0d0'
      "let g:terminal_color_8 = '#626262'
      "let g:terminal_color_9 = '#d75f87'
      "let g:terminal_color_10 = '#87af87'
      "let g:terminal_color_11 = '#ffd787'
      "let g:terminal_color_12 = '#add4fb'
      "let g:terminal_color_13 = '#ffafaf'
      "let g:terminal_color_14 = '#87d7d7'
      "let g:terminal_color_15 = '#e4e4e4'
    "else
      "let g:terminal_ansi_colors = [
        "\ '#4e4e4e', '#d68787', '#5f865f', '#d8af5f',
        "\ '#85add4', '#d7afaf', '#87afaf', '#d0d0d0',
        "\ '#626262', '#d75f87', '#87af87', '#ffd787',
        "\ '#add4fb', '#ffafaf', '#87d7d7', '#e4e4e4'
      "\ ]
    "endif
    "
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"highlight ctermbg=NONE
