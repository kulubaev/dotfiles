
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f ~/.config/zsh/.aliases ] && source ~/.config/zsh/.aliases
[ -f ~/.config/zsh/.fzf.zsh ] && source ~/.config/zsh/.fzf.zsh
[ -f ~/.config/zsh/.git.zsh ] && source ~/.config/zsh/.git.zsh
[ -f ~/.config/zsh/.colors ]  && source ~/.config/zsh/.colors

export PATH="$HOME/Library/Python/2.7/bin:$PATH"

if [ "$TMUX" = "" ]; then tmux; fi
cd $HOME/workshop



