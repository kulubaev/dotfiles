let g:deoplete#enable_at_startup = 1

"<TAB>completion

inoremap <expr><TAB> pumvisible()? "<C-n>": "\<TAB>"


call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
