#!/bin/sh

main(){

    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
        :
    done

    dunstctl set-paused true
    pgrep -x dunst > /dev/null 2>&1 && killall -q dunst || :
    pgrep -x rofi > /dev/null 2>&1 && killall -q rofi || :

    i3lock --ignore-empty-password --show-failed-attempts --image=$HOME/.config/sysimages/LockScreen.png &

}

main
