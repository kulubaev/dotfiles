function! s:goyo_enter()
  silent !tmux set status off
  set noshowmode
  set noshowcmd
  Limelight
endfunction


function! s:goyo_leave()
  silent !tmux set status on
  set showmode
  set showcmd
  Limelight!
endfunction

let g:goyo_callbacks = [function('s:goyo_enter'), function('s:goyo_leave')]
let g:goyo_height='95%'
let g:goyo_width='95%'
