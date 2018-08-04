# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
 export PATH="$PATH:/usr/local/opt/fzf/bin"
#export FZ_DEFAULT_COMMAND='rg --files --hidden --smartcase --glob "!.git/*"'
 export FZF_DEFAULT_COMMAND="fd  --type f --hidden --follow --ignore-case --exclude .git "
 export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
 export FZF_ALT_C_COMMAND="fd -t d "
fi


# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"
