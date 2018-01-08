#!/bin/sh
sudo apt-get install build-essential curl git python-setuptools ruby;
sudo apt-get install build-essential libevent-dev libncurses-dev;

#tmux2.3
wget -O tmux-2.6.tar.gz https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz;
tar -zvxf tmux-2.6.tar.gz;
cd tmux-2.6/

./configure;
make;
sudo make install;
tmux -V;
