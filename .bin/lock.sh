#!/bin/bash

LOCKFILE=/tmp/lock

lock(){
    #dunstctl set-paused true
    pgrep -x swaylock > /dev/null && : || swaylock -efFKlt --image=$HOME/.config/sysimages/LockScreen.png
    #dunstctl set-paused false
}

while [[ -e $LOCKFILE ]]
do
    :
done

pgrep -x rofi > /dev/null && (killall -q rofi && lock) || lock

