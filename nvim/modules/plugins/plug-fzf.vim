set rtp+=/usr/local/opt/fzf

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
"  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

"autocmd! User FzfStatusLine call <SID>fzf_statusline()

 command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)


"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }



"""""""""""""""""""""""""""""""""""
"mapping
"""""""""""""""""""""""""""""""""""
"files
nnoremap <leader>f :Files<CR>
"git files
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :GFiles<CR>
nnoremap <leader>c :Commits<CR>
"history
nnoremap <leader>r :History:<CR>
"colors
nnoremap <leader>v :Colors<CR>
"marks
nnoremap <leader>m :Marks<CR>
"pattern
nnoremap <leader>g :Rg<CR>

"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""
