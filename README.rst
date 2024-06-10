tmux-conf
=========

The included script ``install.sh`` automates the steps below.

Clone repo::

    git clone git@github.com:saliola/tmux-conf.git ~/.tmux-conf

Linux
-----

Create symlinks::

    ln -s ~/.tmux-conf ~/.tmux
    ln -s ~/.tmux-conf/tmux.conf ~/.tmux.conf

Install plugin manager and plugins::

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    ~/.tmux-conf/plugins/tpm/scripts/install_plugins.sh

Mac OSX
-------

Create symlinks::

    ln -s ~/.tmux-conf ~/.tmux
    ln -s ~/.tmux-conf/tmux-osx.conf ~/.tmux.conf

Install plugin manager and plugins::

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    ~/.tmux-conf/plugins/tpm/scripts/install_plugins.sh
