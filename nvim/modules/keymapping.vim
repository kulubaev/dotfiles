
""""""""""""""""""""""""""""""""""""""""""""""""""
"convenience
""""""""""""""""""""""""""""""""""""""""""""""""""

" map and save some keystrokes
nnoremap ; :
nnoremap : ;

" map new leader
let mapleader = "="

""""""""""""""""""""""""""""""""""""""""""""""""""
"movement
""""""""""""""""""""""""""""""""""""""""""""""""""

"tnoremap <Esc> <C-\><C-n>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

""""""""""""""""""""""""""""""""""""""""""""""""""
"folding
""""""""""""""""""""""""""""""""""""""""""""""""""

" folding
nnoremap <space> za

""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight
""""""""""""""""""""""""""""""""""""""""""""""""""

" map cursorcolumn
nnoremap<Leader>c :set cursorcolumn! <CR>

" highlight
nnoremap gV `[v`]

" save session
nnoremap <Leader>s :mksession<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" clean
""""""""""""""""""""""""""""""""""""""""""""""""""

" trim whitespace trailing
nnoremap <Leader>t :%s/\s\+$//e<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" fixing emmet
""""""""""""""""""""""""""""""""""""""""""""""""""
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"""""""""""""""""""""""""""""""""""""""""""""""""

" poor man auto-close

""""""""""""""""""""""""""""""""""""""""""""""""


"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
