#! /usr/bin/env bash
cd ~/code/owensReports
tmux new -s $1 -d
tmux split-window -h -t $1
tmux select-pane -t $1.1 
tmux split-window -v -t $1
tmux select-pane -t $1.2 
tmux send-keys "R" C-m
tmux select-pane -t $1.0 
tmux send-keys "vim scripts/$1_report.Rmd" C-m
tmux send-keys ":cd ~/code/owensReports" C-m
tmux attach -t $1
