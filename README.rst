tmux-conf
=========

The included script ``install.sh`` automates the steps below.

Clone repo::

    git clone https://github.com/saliola/tmux-conf.git ~/.tmux-conf

Linux
-----

Create symlinks::

    ln -s ~/.tmux-conf/tmux.conf ~/.tmux.conf

Mac OSX
-------

Create symlinks::

    ln -s ~/.tmux-conf/tmux-osx.conf ~/.tmux.conf

Download and compile ``reattach-to-user-namespace``::

    git clone https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git
    cd tmux-MacOSX-pasteboard
    make
    cp reattach-to-user-namespace /usr/local/bin/

Restart the tmux server::

    tmux kill-server
