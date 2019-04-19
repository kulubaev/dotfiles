
#!/bin/zsh
#
# Setup a work space called `work` with two windows
# first window has 3 panes.
# The first pane set at 65%, split horizontally, set to api root and running vim
# pane 2 is split at 25% and running redis-server
# pane 3 is set to api root and bash prompt.
# note: `api` aliased to `cd ~/path/to/work`

session="work"
tmux has -t $session &> /dev/null

if [ $? != 0 ]; then

# set up tmux
tmux start-server
tmux setw -g clock-mode-color color255

# create a new tmux session, starting vim from a saved session in the new window

tmux new-session -d -n "react" -s $session -x $(tput cols) -y $(tput lines)

tmux splitw -h
tmux splitw -h


five_percent=$(expr $(tmux display -p '#{window_width}') / 20 )
ten_percent=$(expr $(tmux display -p '#{window_width}') / 10 )
twenty_percent=$(expr $ten_percent + $ten_percent )
fifteen_percent=$(expr $five_percent + $ten_percent )


tmux resizep -t:.0  -x $fifteen_percent
tmux resizep -t:.2  -x $fifteen_percent

tmux selectp -t:.1
tmux send-keys 'vim' C-m


tmux selectp -t:.2
tmux splitw -v



#tmux selectp -t:.3
#tmux splitw -h


tmux selectp -t:.1

# create a new window called scratch
tmux new-window -t $session:2 -n node

tmux splitw -h
tmux splitw -h


tmux resizep -t:.0  -x $fifteen_percent
tmux resizep -t:.2  -x $fifteen_percent

tmux selectp -t:.1
tmux send-keys 'vim' C-m


tmux selectp -t:.2
tmux splitw -v

tmux selectp -t:.1

# create a new window called scratch
tmux new-window -t $session:3 -n html

tmux splitw -h
tmux splitw -h


tmux resizep -t:.0  -x $fifteen_percent
tmux resizep -t:.2  -x $fifteen_percent

tmux selectp -t:.1
tmux send-keys 'vim' C-m


tmux selectp -t:.2
tmux splitw -v

tmux selectp -t:.1


tmux new-window -t $session:4 -n devops

tmux splitw -h
tmux splitw -h


tmux resizep -t:.0  -x $fifteen_percent
tmux resizep -t:.2  -x $fifteen_percent

tmux selectp -t:.1
tmux send-keys 'vim' C-m


tmux selectp -t:.2
tmux splitw -v

tmux selectp -t:.1



# return to main vim window
tmux select-window -t $session:1

# Finished setup, attach to the tmux session!
tmux attach-session -t $session

fi

if [ -z "$TMUX" ]; then
  tmux attach -t $session -d
fi


