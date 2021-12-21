"let &packpath=&runtimepath
"let &packpath=&runtimepath
"source ~/.vimrc

set nocompatible 
set number
set mouse=a
"set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set showmatch
set sw=2
set hidden
"set relativenumber
"set exrc
"set nohlsearch
set scrolloff=12
set completeopt=menuone,noinsert,noselect
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=node_modules/**
set wildignore+=node_modules/**/*
set termguicolors 
    
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

filetype plugin indent on
filetype on
filetype indent on

call plug#begin('~/.vim/plugged/')
" post install (yarn install | npm install) then load plugin only for editing supported files
" THEMES 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'larsbs/vimterial_dark'
Plug 'tomasr/molokai'

" LANGS
Plug 'pantharshit00/vim-prisma'
Plug 'jparise/vim-graphql'
Plug 'statico/vim-javascript-sql'

" UTILS
Plug 'neoclide/coc.nvim', {'branch' : 'release' }
Plug 'neoclide/jsonc.vim'
Plug 'gregsexton/MatchTag'

"Navigation
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
"
"Plug 'w0rp/ale'
"azyncronus linter for ts
Plug 'dense-analysis/ale'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"for test
Plug 'vim-test/vim-test'
Plug 'tpope/vim-surround'
"Ident
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
"popup
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-lua/popup.nvim'

"ejs syntax for
Plug 'nikvdp/ejs-syntax'

"Formatter 
Plug 'ruby-formatter/rufo-vim'

"Ruby extension for erb
Plug 'kana/vim-textobj-user'
Plug 'https://github.com/whatyouhide/vim-textobj-erb'

"Support ruby lang
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
"syntax highlight

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"language client for rename and those things
"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }

 "(Optional) Multi-entry selection UI.
"Plug 'junegunn/fzf'

"show who make a commit
Plug 'f-person/git-blame.nvim'

"search similiar to vimgrep
Plug 'mileszs/ack.vim'
call plug#end()

"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'


let g:material_terminal_italics = 1
colorscheme material
let g:material_theme_style = 'default'
"colorscheme torte
"colorscheme material 
"colorscheme gruvbox
"colorscheme onehalfdark
"colorscheme molokai
"colorscheme onehalfdark
"colorscheme dracula
"colorscheme onehalflight
"let g:molokai_original = 1
let g:rehash256 = 1
"highlight Normal guibg=none;
"Remap keys
let mapleader=" "



let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
 "Vim
"let g:indentLine_color_term = 239

let g:indentLine_char = '|'
"INSERT maps
inoremap jj <ESC>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-f> <end>
inoremap <C-b> <Home>
inoremap <C-l> <right>
"inoremap <C-f> <Left>
inoremap <C-d> <Delete>
inoremap <silent><C-o> <End><CR>

inoremap <silent>;; <end>;<End>
inoremap <silent>,, <end>,<End>

inoremap <silent><c-h> <Left>
"inoremap <C-p> <esc>:find 
inoremap <silent><expr> <c-space> coc#refresh()
imap <silent><A-l> <End>
imap <silent><A-h> <Left>
imap <silent><C-v> <C-r>*
inoremap %%<cr> <%  %><left><left><left><left>

"iunmap <c-indent>
"inoremap <silent><C><tab> <esc><esc>:b<space>
"NORMAL mapjis
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nd :w !node<CR>
nmap <Leader>ns :w !tsc<CR>
nmap <silent>qq :q<CR>
nmap ;; <plug>NERDCommenterToggle
nmap <Leader>vi :so ~/.vimrc<cr>
nnoremap <leader><space> :call NERDTreeToggleAndRefresh()<CR>
nnoremap <leader>o :call NERDTreeToggleAndRefresh()<CR><c-w>t
nnoremap <c-y> :NERDTreeFind<CR>

" COC code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Using Lua functions
"nnoremap <c-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <c-p> <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <tab> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


"nmap <Leader>co :Colors<cr>
"this works with fzf


function NERDTreeToggleAndRefresh()
  if g:NERDTree.IsOpen()
    :NERDTreeToggle
  else 
    :NERDTreeFind
  :NERDTreeRefreshRoot
endif
endfunction	      		       

"augroup KeepCentered
  "autocmd!
  "autocmd CursorMoved * normal! zz
"augroup END

nmap <silent> K :call CocAction('doHover', 'float') <CR>

"noremap <silent><C-b> :NERDTreeToggle<CR>
"noremap <silent><C-w> :NERDTreeFind<CR> 
"noremap <C-n> :b<space>
"noremap <TAB> :Buffers<CR>
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

noremap <silent>C ciw
noremap <silent>J yyp

noremap <silent>gl ``
"noremap <leader>o <C-w>t
"noremap <C-p> :find<space> 
"noremap <C-p> :GFiles<CR>
"noremap <A-p> :Files<CR>
"for FZF

noremap <silent>ss :wall<CR>
"noremap <silent>S :w<CR>
"noremap <silent><c-l> ^I
"noremap <silent>ff :Prettier<CR>
noremap <silent>fd :CocCommand prettier.formatFile<cr> 
noremap <silent>ff :Prettier<cr> 
noremap <silent>fs :CocCommand eslint.executeAutofix<cr> 
nmap <leader>f :CocCommand prettier.formatFile<cr> 
noremap <silent>fr :Rufo<cr>
noremap <silent>L <end>
noremap <silent>H <home>
noremap <silent>tt ea

" these "Ctrlmappings" work well when Caps Lock is mapped to Ctrl
"nmap <silent>tn :TestNearest<CR>
nmap <silent>tf :w<cr>:TestFile<CR>
nmap <silent>ts :wall<cr>:TestSuite<CR>
nnoremap <silent>cii ci(
"nmap <silent>tl :TestLast<CR>
"nmap <silent>tg :TestVisit<CR>
"nnoremap <silent>vv v

vnoremap ii i(
"vnoremap <silent>'' S'
"VISUAL maps
vmap ;; <plug>NERDCommenterToggle
vnoremap <C-c> "+y



"Plugins and others confing

"let g:rufo_auto_formatting = 1

let g:coc_global_extensions = [
 \'coc-snippets',
 \'coc-tsserver',
 \'coc-vetur',
 \'coc-emmet',
 \'coc-css',
 \'coc-angular',
 \'coc-eslint',
 \'coc-prettier',
 \'coc-json',
 \'coc-html-css-support',
 \'coc-jest',
 \'coc-tabnine',
 \'coc-prisma',
 \'coc-solargraph',
 \]


autocmd FileType scss setl iskeyword+=@-@

autocmd BufNewFile,BufRead *.html.erb set filetype=html
"this allow emmet to edit erb files

"let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
\  "emmet.includeLanguages": {
\   "html.erb": "html"
\  }
\ }

let g:kite_supported_languages = []
let g:airline_poweline_fonts = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden=1
let g:airline_theme='base16_monokai'
let g:NERDTreeWinPos = "right"
let g:javascript_plugin_jsdoc = 1
"qq
"let g:airline_theme = 'material'
autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0
"let g:vim_json_conceal=0
augroup JsonToJsonc
      autocmd! FileType json set filetype=jsonc
    augroup END

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
"let g:fzf_action = {
  "\ 'ctrl-t': 'tab split',
  "\ 'ctrl-x': 'split',
  "\ 'ctrl-v': 'vsplit' }

"let $FZF_DEFAULT_COMMAND='rg --files --hidden'
" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

"LANGUAGE CLIENT CONFIG
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
"nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"highlight ctermbg=NONE
