
""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax filetype
""""""""""""""""""""""""""""""""""""""""""""""""""

" enable filetype detection
filetype plugin indent on

" syntax enable
syntax enable


""""""""""""""""""""""""""""""""""""""""""""""""""
" tabs
""""""""""""""""""""""""""""""""""""""""""""""""""

" tabs/ number of visual spaces per TAB
set tabstop=2

" number of spaces in tab when editing
set softtabstop=2

" tabs are spaces
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""
" splits
""""""""""""""""""""""""""""""""""""""""""""""""""
"split to below
set splitbelow

"split to right
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""
"ui config
""""""""""""""""""""""""""""""""""""""""""""""""""

" show  line numbers
set number

" show command in bottom lineoset
set showcmd

" load filetype-specific indent files
filetype plugin indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
" set lazyredraw
set lazyredraw

" higlight matching [{()}]
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight
""""""""""""""""""""""""""""""""""""""""""""""""""

" highlight current line
set cursorline

" highlight current line
set cursorcolumn

au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline

""""""""""""""""""""""""""""""""""""""""""""""""""
" searching
""""""""""""""""""""""""""""""""""""""""""""""""""

" search as characters are enetered
set incsearch

" highlight matches
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""
" folding
""""""""""""""""""""""""""""""""""""""""""""""""""

" enable folding
set foldenable

" open most folds by default
set foldlevelstart=5


" nested fold max
set foldnestmax=5

" fold based on indent level
set foldmethod=indent

""""""""""""""""""""""""""""""""""""""""""""""""""
" colors
"""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" pane
""""""""""""""""""""""""""""""""""""""""""""""""""

set winwidth=150

""""""""""""""""""""""""""""""""""""""""""""""""""
" numbers
""""""""""""""""""""""""""""""""""""""""""""""""""
" set relative number
set relativenumber


let g:python_2_host_prog = '/usr/local/bin/python'
let g:python_3_host_prog = '/usr/local/bin/python3'
