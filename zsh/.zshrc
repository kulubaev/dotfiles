
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f ~/.config/zsh/.aliases ]; then
  source ~/.config/zsh/.aliases
fi

if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]; then
  source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

export PATH=$PATH:./node_modules/.bin:/usr/local/share/dotnet:
[ -f ./.fzf.zsh ] && source ./.fzf.zsh
