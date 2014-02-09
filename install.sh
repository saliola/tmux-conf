#!/bin/bash

# echo commands before execution (useful for tracing)
set -x

# Clone repo
git clone https://github.com/saliola/tmux-conf.git ~/.tmux-conf

UNAME=$(uname)

# Linux: create symlink
if [[ $UNAME == 'Linux' ]]; then
    ln -s ~/.tmux-conf/tmux.conf ~/.tmux.conf
fi

# Mac OSX: create symlink and install ``reattach-to-user-namespace``
if [[ $UNAME == 'Darwin' ]]; then
    # Create symlink
    ln -s ~/.tmux-conf/tmux-osx.conf ~/.tmux.conf

    # install reattach-to-user-namespace
    cd /tmp
    git clone https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git
    cd tmux-MacOSX-pasteboard
    make
    sudo -k cp reattach-to-user-namespace /usr/local/bin/

    # restart the tmux server
    tmux kill-server
fi
