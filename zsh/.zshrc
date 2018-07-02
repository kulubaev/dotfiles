
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f ~/.config/zsh/.aliases ]; then
  source ~/.config/zsh/.aliases
fi

[ -f ./.fzf.zsh ] && source ./.fzf.zsh

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

