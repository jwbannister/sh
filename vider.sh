#! /usr/bin/env bash
cd $1
tmux new -s $1 -d
tmux split-window -h -t $1
tmux resize-pane -t $1.0 -x 120
tmux select-pane -t $1.0 
tmux send-keys "vim" C-m
tmux send-keys ":30vs" C-m
tmux attach -t $1
