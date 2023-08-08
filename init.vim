" ===> init vim <===

"let &packpath=&runtimepath
"let &packpath=&runtimepath
"source ~/.vimrc
" 
" ===> EDITOR SETTINGS <===
set nocompatible 
set number
set mouse=a
"set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set showmatch
set et
set sw=2
set hidden
set relativenumber
"set exrc
"set nohlsearch
set scrolloff=16
set completeopt=menuone,noinsert,noselect
set path+=**
"set wildmenu
"set autoread
set wildignore+=**/node_modules/**
set wildignore+=node_modules/**
set wildignore+=node_modules/**/*
"set termguicolors 
    
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

"set noshowmatch 
" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set hlsearch
set hlsearch
set infercase
"set insensitive

filetype plugin indent on
filetype on
filetype indent on

"highlight Normal guibg=NONE
"highlight Normal ctermbg=NONE

let mapleader=" "
set cursorline

set formatoptions-=cro " no add comment after linebreak
autocmd FileType * set formatoptions-=cro


"hi cursorline cterm=none term=none
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"highlight CursorLine guibg=#303000 ctermbg=234
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" ===> PLUGINS INSTALLATION <===
"
call plug#begin('~/vimfiles/plugged')
" post install (yarn install | npm install) then load plugin only for editing supported files
" THEMES 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'larsbs/vimterial_dark'
Plug 'tomasr/molokai'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" LANGS
Plug 'pantharshit00/vim-prisma'
Plug 'jparise/vim-graphql'
Plug 'statico/vim-javascript-sql'

" UTILS
Plug 'neoclide/coc.nvim', {'branch' : 'release' }
Plug 'neoclide/jsonc.vim'
Plug 'gregsexton/MatchTag'

"Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'styled-components/vim-styled-components'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-tree.lua'

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
Plug 'mxw/vim-jsx' "react

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
Plug 'ngmy/vim-rubocop'

"Ruby extension for erb
Plug 'kana/vim-textobj-user'
Plug 'https://github.com/whatyouhide/vim-textobj-erb'

"Support ruby lang
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
"syntax highlight

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Fold
Plug 'vim-utils/vim-ruby-fold'
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

" stats
"Plug 'wakatime/vim-wakatime'

"kotlin
"Plug 'udalov/kotlin-vim'

"jsx
Plug 'maxmellon/vim-jsx-pretty'

"Plug 'github/copilot.vim'


"for imports in js

"Plug 'ludovicchabant/vim-gutentags'
"Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" for snippets
"Plug 'honza/vim-snippets'

" vim language server protocol
Plug 'prabirshrestha/vim-lsp'

" git
Plug 'tpope/vim-fugitive'


Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"Plug 'duane9/nvim-rg'

"terraform 
Plug 'hashivim/vim-terraform'
call plug#end()



" CONFIG FOR PLUGINS

" ===> PLUGINS CONFIG <===
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'


"for python
"let g:python3_host_prog = 'C:\Users\junio\AppData\Local\Programs\Python\Python310'
let g:material_terminal_italics = 1
"let g:molokai_original = 1
"let g:rehash256 = 1

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }
let g:tokyonight_terminal_colors = 1	
" Load the colorscheme
"colorscheme tokyonight
"colorscheme material
"colorscheme torte
"colorscheme material 
colorscheme gruvbox
"colorscheme onehalfdark
"colorscheme molokai
"colorscheme onedark
"colorscheme dracula
"colorscheme onehalflight
"let g:material_theme_style = 'darker'
"Remap keys
"


"Nerd Config
let g:airline_powerline_fonts = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = " "
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

let g:indentLine_color_term = 239

let g:indentLine_char = '|'

" ============================================================================================================

" MAPINGS 

" ===> MAPINGS <===

"INSERT maps
inoremap jj <ESC>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
"inoremap <C-f> <Left>
inoremap <C-d> <Delete>


" ===> MAPINGS <===
inoremap <C-f> <esc>:Rg<cr>
nnoremap <C-p> <esc><cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <C-e> <esc><cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>lr <esc><cmd>lua require('telescope.builtin').oldfiles()<cr>
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
inoremap <silent><expr> <C-k> coc#refresh()
"iunmap <c-indent>
"inoremap <silent><C><tab> <esc><esc>:b<space>



"NORMAL mapjis
nmap <Leader>nd :w !node<CR>
nmap <Leader>ns :w !tsc<CR>
nmap <silent>qq :q<CR>
nmap <silent>qa :qa<CR>
nmap ;; <plug>NERDCommenterToggle
nmap <Leader>vi :so ~/.vimrc<cr>
"nnoremap <leader><space> :call NERDTreeToggleAndRefresh()<CR>
"nnoremap <silent>cc :call NERDTreeToggleAndRefresh()<CR>
"nnoremap <leader><space> :NvimTreeToggle<CR>
nnoremap <silent>tt :NvimTreeToggle<CR>
nnoremap <silent>tf :NvimFindFile<CR>

nnoremap <leader>cc :NvimTreeToggle<CR>
"nnoremap <silent>cc :call NERDTreeToggleAndRefresh()<CR>
"nnoremap <silent>cc :NvimTreeToggle<CR>
nnoremap <silent>gk :call NerdFind()<CR>

nnoremap <C-f> :Rg<cr>
" COC code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Nop>
nmap <silent> gvd :vsplit<CR><Plug>(coc-definition)
nmap <leader>d :vsplit<CR><Plug>(coc-definition)


"GIT MAPS

nmap <leader>g :Gvdiffsplit<cr>
"import
nmap <C-i> <Plug>(JsFileImport)
nmap <C-u> <Plug>(PromptJsFileImport)

" Using Lua functions
nnoremap <c-p> <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <c-p> <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <c-e> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>h <c-w><
nnoremap <leader>j <c-w>>
nnoremap <leader>zi <c-w>30>
nnoremap <leader>zo <c-w>30<
nmap <Leader>co :wa<space>!code<cr>
"this works with fzf
nmap <Leader>w :set wrap<cr>
nmap <Leader>nw :set nowrap<cr>

nmap <Leader>rn :set rnu<cr>
nmap <Leader>nrn :set rnu!<cr>
"path of the current file

nmap <silent>sk :call CocAction('doHover', 'float') <CR>

" Use K to show documentation in preview window
nnoremap <silent>K :call <SID>show_documentation()<CR>



" multivisual remap

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>gu <Plug>(GitGutterUndoHunk)

"noremap <silent><C-b> :NERDTreeToggle<CR>
"noremap <silent><C-w> :NERDTreeFind<CR> 
"noremap <C-n> :b<space>
"noremap <TAB> :Buffers<CR>
"noremap <TAB> :bjh<space>
"noremap <silent><c-l> :bnext<cr>
"BUFFER CONTROLS
"noremap <silent>L :bnext<cr>
"noremap <silent>H :bprevious<cr>
"noremap <silent>ww :bd<cr>
noremap <silent><C-o> <C-^>

"up and down lines
"inoremap <c-n> <Esc>:m .+1<CR>==gi
"inoremap <c-p> <Esc>:m .-2<CR>==gi

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

noremap <silent>C ciw
noremap <silent>J yyp

"noremap <silent>gl ``

noremap <silent>gu gg
noremap <silent>gn G 
noremap <silent>gg ``
noremap <silent>go :bp<cr>
noremap <silent>gl :bn<cr>
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
"noremap <silent>fr :Rufo<cr>
noremap <silent>fr :RuboCop<cr>

noremap <silent>L <end>
noremap <silent>H <home>
"noremap <silent>tt ea
"
"Navigation
noremap <silent>? 12k
noremap <silent>/ 12j
noremap <leader>/ /\c
noremap <leader>? /
" these "Ctrlmappings" work well when Caps Lock is mapped to Ctrl
"nmap <silent>tn :TestNearest<CR>
nmap <leader>tf :w<cr>:TestFile<CR>
nmap <leader>ts :wall<cr>:TestSuite<CR>
nnoremap <silent>cii ci(
"nmap <silent>tl :TestLast<CR>
"nmap <silent>tg :TestVisit<CR>
"nnoremap <silent>vv v

vnoremap ii i(
"vnoremap <silent>'' S'
"VISUAL maps
vmap ;; <plug>NERDCommenterToggle
vnoremap <C-c> "+y

" leader maps
nmap <leader>pi :PlugInstall<cr>
nnoremap <leader>cs :CocConfig<cr>

"nmap <leader>ls :CocList snippets<cr>


nnoremap <leader>cp "%pV"+yV
"/home/userlifex/.vimrc
" ===================================================================================

" ===> MISC <===
function NerdFind()
  :NERDTreeFind
  :NERDTreeRefreshRoot
endfunction

function NERDTreeToggleAndRefresh()
  if g:NERDTree.IsOpen()
    :NERDTreeToggle
  else 
    :NERDTreeFind
  :NERDTreeRefreshRoot
endif
endfunction	      		       


"folding
"let g:ruby_fold_lines_limit = 200
"set foldmethod=indent   
"set foldnestmax=10
""set nofoldenable
"set foldlevel=2
"
"highlight current line in git
"let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1
"set signcolumn=yes
"highlight! link SignColumn LineNr

let g:gitgutter_set_sign_backgrounds = 1

"let g:rufo_auto_formatting = 1

let g:coc_global_extensions = [
 \'coc-tsserver',
 \'coc-vetur',
 \'coc-css',
 \'coc-eslint',
 \'coc-prettier',
 \'coc-json',
 \'coc-html-css-support',
 \'coc-jest',
 \'coc-tabnine',
 \'coc-solargraph',
 \]
"let g:coc_global_extensions = [
 "\'coc-snippets',
 "\'coc-tsserver',
 "\'coc-vetur',
 "\'coc-emmet',
 "\'coc-css',
 "\'coc-angular',
 "\'coc-eslint',
 "\'coc-prettier',
 "\'coc-json',
 "\'coc-html-css-support',
 "\'coc-jest',
 "\'coc-tabnine',
 "\'coc-prisma',
 "\'coc-solargraph',
 "\]


autocmd FileType scss setl iskeyword+=@-@

autocmd BufNewFile,BufRead *.html.erb set filetype=html
"this allow emmet to edit erb files

let $FZF_DEFAULT_OPTS = '--layout=reverse'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
"command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
\  "emmet.includeLanguages": {
\   "html.erb": "html",
\   "javascript": {
\       "extends": "jsx" 
\   },
\  }
\ }

let g:mta_filetypes = {
\ 'html' : 1,
\ 'xhtml' : 1,
\ 'xml' : 1,
\ 'jinja' : 1,
\ 'javascript.jsx': 1, 
\ }
let g:vim_jsx_pretty_highlight_close_tag=1
let g:vim_jsx_pretty_colorful_config=1

let g:kite_supported_languages = []
let g:airline_poweline_fonts = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:javascript_plugin_jsdoc = 1
let g:airline_theme='base16_monokai'
"qq
"let g:airline_theme = 'material'
autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0
"let g:vim_json_conceal=0

augroup JsonToJsonc
      autocmd! FileType json set filetype=jsonc
    augroup END

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<cr>" :
      "\ coc#refresh()

"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"vnoremap ( d<esc>i(
"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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


" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

"hi Normal ctermfg=white ctermbg=black
lua << EOF
require('telescope').setup({  
  defaults = { 
    path_display = { "smart" }, 
    file_ignore_patterns = { "node_modules", ".git", "dist" },
    layout_config = {
      width= 0.95
      }
    } 
  })  
require("nvim-tree").setup({
    prefer_startup_root = true,
    view = {
      side = "right",
      width=60
    },
    update_focused_file = {
      enable = true,
      update_cwd = true, -- update the current directory
    },
  })
EOF

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
