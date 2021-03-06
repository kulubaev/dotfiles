"""""""""""""""""""""""""""""""""""""""""""""""""
" vim configuration
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'embear/vim-localvimrc'
Plug 'editorconfig/editorconfig-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
" make/linting
""""""""""""""""""""""""""""""""""""""""""""""""""

" async checking
Plug 'w0rp/ale'

""""""""""""""""""""""""""""""""""""""""""""""""""
" theme
""""""""""""""""""""""""""""""""""""""""""""""""""

" colorscheme
Plug 'sjl/badwolf'

"  tomorroe theme
Plug 'chriskempson/vim-tomorrow-theme'

Plug 'chriskempson/base16-vim'

Plug 'jacoborus/tender.vim'

Plug 'dylanaraps/crayon'

Plug 'tomasiser/vim-code-dark'

Plug 'AlessandroYorba/Alduin'

Plug 'mhartington/oceanic-next'

Plug 'chriskempson/base16-vim'

Plug 'rafi/awesome-vim-colorschemes'

""""""""""""""""""""""""""""""""""""""""""""""""""
" focus
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/goyo.vim'

Plug 'junegunn/limelight.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
" folder file browse
""""""""""""""""""""""""""""""""""""""""""""""""""

" file browse/scroll
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}

Plug 'tpope/vim-vinegar'

" buffer explorer
Plug 'jlanzarotta/bufexplorer'

" smooth scroll
Plug 'terryma/vim-smooth-scroll'

""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy search
""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf.vim
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
"file switch/map
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'tpope/vim-projectionist'

""""""""""""""""""""""""""""""""""""""""""""""""""
" uitlities/commandline
""""""""""""""""""""""""""""""""""""""""""""""""""
" unix commands as vim commands
Plug 'tpope/vim-eunuch'


""""""""""""""""""""""""""""""""""""""""""""""""""
" status
""""""""""""""""""""""""""""""""""""""""""""""""""

" powerline
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""""""""""""""""""""
" git
""""""""""""""""""""""""""""""""""""""""""""""""""

" mighty fugitive
Plug 'tpope/vim-fugitive'


" gitgutter
Plug 'airblade/vim-gitgutter'


""""""""""""""""""""""""""""""""""""""""""""""""""
" history
""""""""""""""""""""""""""""""""""""""""""""""""""

" history, undo
Plug 'sjl/gundo.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""
" multiplexer
""""""""""""""""""""""""""""""""""""""""""""""""""

" multiplexer
Plug 'christoomey/vim-tmux-navigator'


""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax/lint
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'ruanyl/vim-fixmyjs'

""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets/ auto-pair
""""""""""""""""""""""""""""""""""""""""""""""""""

"Plug 'SirVer/ultisnips'
"
"snipptes with autocomplete

Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'

" auto-pairing
"Plug 'jiangmiao/auto-pairs'

" auto insert html
Plug 'mattn/emmet-vim'

" auto enclose html
Plug 'alvan/vim-closetag'

"surround
Plug 'tpope/vim-surround'

"vim-closely
"Plug 'rstacruz/vim-closer'

"lexima

Plug 'cohama/lexima.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
" autocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'ludovicchabant/vim-gutentags'
" tagbar.vim
Plug 'majutsushi/tagbar'

""""""""""""""""""""""""""""""""""""""""""""""""""
" simple todo
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vitalk/vim-simple-todo'
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
" prettifier
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

""""""""""""""""""""""""""""""""""""""""""""""""""
" indentation
""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'nathanaelkane/vim-indent-guide'

Plug 'yggdroot/indentLine'

Plug 'pangloss/vim-javascript'

" tabular indentation
Plug 'godlygeek/tabular'

""""""""""""""""""""""""""""""""""""""""""""""""""
" react.js

Plug 'mxw/vim-jsx'

""""""""""""""""""""""""""""""""""""""""""""""""""
" json
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'elzr/vim-json'

""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax/lint

Plug 'ruanyl/vim-fixmyjs'

""""""""""""""""""""""""""""""""""""""""""""""""""
" jsdoc
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'heavenshell/vim-jsdoc'
"Plug 'othree/jsdoc-syntax.vim'
Plug 'othree/yajs.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
" css
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'ap/vim-css-color'


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
" live preview
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/vim-xmark', { 'do': 'make' }

""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax
""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'plasticboy/vim-markdown'

Plug 'gabrielelana/vim-markdown'

""""""""""""""""""""""""""""""""""""""""""""""""""
" style
""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'reedes/vim-pencil'

""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
" english/grammar/vocabulary
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" dictionary
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'jonhiggs/MacDict.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""


