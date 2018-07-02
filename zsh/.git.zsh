

autoload -U compinit && compinit

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '$%b'
setopt PROMPT_SUBST
PROMPT='% ${PWD/#$HOME/~}  '
RPROMPT=\$vcs_info_msg_0_
