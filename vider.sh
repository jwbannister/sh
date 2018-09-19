#!/bin/bash
if [ $# -eq 1 ]; then
    SESH=$1
else
    SESH=$2
fi 
COLUMNS=$(tput cols)
cd $1
tmux new -s $SESH -d -x "$COLUMNS"
tmux split-pane -h -b -l 125 -t $SESH
tmux send-keys -t $SESH:0.0 "vim" C-m
tmux send-keys -t $SESH:0.0 ":30vs" C-m
tmux send-keys -t $SESH:0.0 ":Explore" C-m
sleep 1
tmux send-keys -t $SESH:0.0  C-l
tmux send-keys -t $SESH:0.0  C-h
tmux attach -t $SESH
