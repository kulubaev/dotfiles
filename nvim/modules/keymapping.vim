
""""""""""""""""""""""""""""""""""""""""""""""""""
"convenience
""""""""""""""""""""""""""""""""""""""""""""""""""

" map and save some keystrokes
nnoremap ; :
nnoremap : ;

" map new leader
let mapleader = "keypad_slash"

""""""""""""""""""""""""""""""""""""""""""""""""""
"movement
""""""""""""""""""""""""""""""""""""""""""""""""""

tnoremap <Esc> <C-\><C-n>

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

