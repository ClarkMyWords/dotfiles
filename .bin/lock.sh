#!/bin/sh

lock(){
    pgrep -x i3lock > /dev/null && : || i3lock -ef --image=$HOME/.config/sysimages/LockScreen.png
}

main(){

    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
        :
    done

    dunstctl set-paused true
    pgrep -x rofi > /dev/null && (killall -q rofi && lock) || lock

    unpause_dunst.sh
}

main
