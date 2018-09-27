#! /bin/zsh
COLUMNS=$(tput cols)
cd ~/code/$1
. /anaconda3/etc/profile.d/conda.sh
conda deactivate
tmux new -s $1 -d -x "$COLUMNS"
tmux send-keys -t $1:0.0 "conda activate $1" C-m
tmux set-environment -t $1 TMUX_ENV $1
tmux split-pane -h -b -l 125 -t $1
tmux send-keys -t $1:0.0 "vim" C-m
tmux send-keys -t $1:0.0 ":30vs" C-m
tmux send-keys -t $1:0.0 ":Explore" C-m
sleep 1
tmux send-keys -t $1:0.0  C-l
tmux send-keys -t $1:0.0  C-h
tmux attach -t $1
