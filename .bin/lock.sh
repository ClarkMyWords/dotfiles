#!/bin/sh

lock(){
    pgrep -x swaylock > /dev/null && : || swaylock -efFKlt --image=$HOME/.config/sysimages/LockScreen.png
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
