#!/bin/bash

# echo commands before execution (useful for tracing)
set -x

# exit script at first error
set -e

# Clone repo, if it doesn't exist
if [ ! -d ~/.tmux-conf ]; then
    git clone https://github.com/saliola/tmux-conf.git ~/.tmux-conf
fi;

UNAME=$(uname)

# Linux: create symlink
if [[ $UNAME == 'Linux' ]]; then
    ln -s ~/.tmux-conf/tmux.conf ~/.tmux.conf
fi

# Mac OSX: create symlink and install ``reattach-to-user-namespace``
if [[ $UNAME == 'Darwin' ]]; then
    # Create symlink
    ln -s ~/.tmux-conf/tmux-osx.conf ~/.tmux.conf

    # restart the tmux server
    tmux kill-server
fi
