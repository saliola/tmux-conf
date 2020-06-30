#!/bin/bash

# echo commands before execution (useful for tracing)
set -x

# exit script at first error
set -e

# Clone repo, if it doesn't exist
if [ ! -d ~/.tmux-conf ]; then
    git clone https://github.com/saliola/tmux-conf.git ~/.tmux-conf
    git clone https://github.com/tmux-plugins/tpm ~/.tmux-conf/plugins/tpm
fi;

UNAME=$(uname)

# Create symlinks
if [[ $UNAME == 'Linux' ]]; then
    ln -s ~/.tmux-conf ~/.tmux
    ln -s ~/.tmux-conf/tmux-linux.conf ~/.tmux.conf
fi
if [[ $UNAME == 'Darwin' ]]; then
    ln -s ~/.tmux-conf ~/.tmux
    ln -s ~/.tmux-conf/tmux-osx.conf ~/.tmux.conf
fi

# Install plugins
~/.tmux-conf/plugins/tpm/scripts/install_plugins.sh
