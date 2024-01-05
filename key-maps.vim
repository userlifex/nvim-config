inoremap jj <ESC>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
"inoremap <C-f> <Left>
inoremap <C-d> <Delete>


" i'm not using this very often so they probably could change
inoremap <silent>;; <end>;<End>
inoremap <silent>,, <end>,<End>


nmap <silent>qq :q<CR>
nmap <silent>qa :qa<CR>

"comment IMPORTANT
nmap ;; <plug>NERDCommenterToggle 

" important definitions of navigation between files
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
"  ---------- remove after verify if it works in normal vim


nmap <Leader>w :set wrap<cr>
nmap <Leader>nw :set nowrap<cr>

nmap <Leader>rn :set rnu<cr>
nmap <Leader>nrn :set rnu!<cr>

noremap <silent>gu gg
noremap <silent>gn G 
noremap <silent>gg ``
noremap <silent>go :bp<cr>
noremap <silent>gl :bn<cr>


noremap <silent>C ciw
noremap <silent>J yyp

nnoremap <leader>h <c-w><
nnoremap <leader>j <c-w>>
nnoremap <leader>zi <c-w>30>
nnoremap <leader>zo <c-w>30<

noremap <silent>ss :wall<CR>


noremap <silent>L <end>
noremap <silent>H <home>

noremap <silent>? 12k
noremap <silent>/ 12j
noremap <leader>/ /\c
noremap <leader>? /

vnoremap <C-c> "+y

noremap <silent>L <end>
noremap <silent>H <home>


" toggle wrap
nmap <Leader>w :set wrap<cr>
nmap <Leader>nw :set nowrap<cr>

" toggle relativenumber
nmap <Leader>rn :set rnu<cr>
nmap <Leader>nrn :set rnu!<cr>
