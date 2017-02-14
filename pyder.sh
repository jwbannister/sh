#! /usr/bin/env bash
cd ~/code/$1
tmux new -s $1 -d
tmux split-window -h -t $1
tmux select-pane -t $1.1 
tmux split-window -v -t $1
tmux select-pane -t $1.2 
tmux send-keys "ipython" C-m
tmux select-pane -t $1.0 
tmux send-keys "vim ./" C-m
tmux send-keys ":cd ~/code/$1" C-m
tmux attach -t $1
