#! /usr/bin/env bash
cd $1
if [ -z "$2" ]; then
    SESH=$1
else
    SESH=$2
fi 
tmux new -s $SESH -d
tmux split-window -bh -t $SESH 
tmux send-keys -t left "vim" C-m
tmux send-keys -t left ":30vs" C-m
tmux send-keys -t left "-" C-m
tmux send-keys -t left C-l 
tmux send-keys -t left C-h 
tmux send-keys -t left ":bd 2" C-m
tmux send-keys -t right "R" C-m
tmux attach -t $SESH
