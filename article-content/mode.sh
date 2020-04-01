#!/usr/bin/env sh

# handy: ln -s ~/work/siggu.org/article-content/mode.sh /usr/local/bin/mode.sh


if [ $# -eq 0 ]
  then
    echo "Please specify 'writing', 'nilenso', or 'pariyatti'."
    exit
fi

# kill general
killall -I telegram-deskto
killall -I gnome-control-c
killall -I firefox 
killall -I gnome-calendar

# kill by mode
killall -I emacs
killall -I slack
killall -I signal-desktop
# killall -I code # gets angry when it receives a SIGTERM :(

if [ "$1" = "writing" ]
  then
    emacs &
    firefox &
    exit
fi

if [ "$1" = "nilenso" ]
  then
    slack &
    exit
fi

if [ "$1" = "pariyatti" ]
  then
    signal-desktop &
    # code &
    exit
fi
