if !1 | finish | endif

call plug#begin()
  "load plugin list for vim-plug to manage
  execute 'source' Dot('plugins.vim')
call plug#end() 

"load all configuration file
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  exec 'source' file
endfor

