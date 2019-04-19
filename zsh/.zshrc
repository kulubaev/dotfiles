
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
KEYTIMEOUT=1

[ -f ~/.config/zsh/.aliases ] && source ~/.config/zsh/.aliases
[ -f ~/.config/zsh/.fzf.zsh ] && source ~/.config/zsh/.fzf.zsh
[ -f ~/.config/zsh/.git.zsh ] && source ~/.config/zsh/.git.zsh
[ -f ~/.config/zsh/.tmux.zsh ]  && source ~/.config/zsh/.tmux.zsh
[ -f ~/.config/zsh/.colors ]  && source ~/.config/zsh/.colors

export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/Users/ruslan/.pyenv/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"



export NODE_PATH=`which node`
