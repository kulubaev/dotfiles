
let g:ale_linters = {'html': [], 'javascript': ['eslint', 'flow']}

let g:ale_fix_on_save = 1

let g:ale_javascript_eslint_use_global = 0
let g:ale_javascript_flow_use_global = 0

let g:ale_history_log_output = 1

let g:ale_statusline_format = ['✘ %d', '∆ %d', '● ok']
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '∆'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> <C-[> <Plug>(ale_previous_wrap)
nmap <silent> <C-]> <Plug>(ale_next_wrap)

let g:ale_fixers = {
  \'javascript': ['eslint']
  \ }

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --no-semi'




"let g:ale_javascript_prettier_use_local_config
