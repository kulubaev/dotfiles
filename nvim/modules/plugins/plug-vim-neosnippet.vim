let g:deoplete#ignore_sources = {}

let g:deoplete#ignore_sources._ = ["neosnippet"]

let g:snippet#snippets_directory='~/.config/nvim/snipts'

" I want to use my tab more smarter. If we are inside a completion menu jump
" to the next item. Otherwise check if there is any snippet to expand, if yes
" expand it. Also if inside a snippet and we need to jump tab jumps. If none
" of the above matches we just call our usual 'tab'.

"function! s:neosnippet_complete()
"  if pumvisible()
"    return "\<c-n>"
"  else
"    if neosnippet#expandable_or_jumpable()
"      return "\<Plug>(neosnippet_expand_or_jump)"
"    endif
""    return "\<tab>"
"  endif
""endfunction

"imap <expr><TAB> <SID>neosnippet_complete()


"let g:AutoPairsMapCR=0
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
"imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"


    " SuperTab like snippets' behavior.
    "imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    " \ "\<Plug>(neosnippet_expand_or_jump)"
    " \: pumvisible() ? "\<C-n>" : "\<TAB>"
    "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    " \ "\<Plug>(neosnippet_expand_or_jump)"
    " \: "\<TAB>"
    " " deoplete + neosnippet + autopairs
let g:AutoPairsMapCR=0
let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
