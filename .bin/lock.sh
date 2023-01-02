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

    pgrep -x rofi > /dev/null && (killall -q rofi && lock) || lock
}

main
