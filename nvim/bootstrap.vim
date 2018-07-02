
"helper function for make the relative path
function! Dot(path)
  return '~/.config/nvim/' . a:path
endfunction

"load all configuration files
for file in split(glob(Dot('modules/*.vim')),'\n')
  execute 'source' file
endfor

