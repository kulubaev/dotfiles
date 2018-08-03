let base16colorspace=256


"if you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"" Theme
syntax enable

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set background=dark

"colorscheme  base16-tomorrow-night
"colorscheme base16-ocean
"colorscheme papercolor
"colorscheme jellybeans
"colorscheme wombat256mod
"colorscheme focuspoint
colorscheme muon

hi Normal guibg=NONE ctermbg=NONE
