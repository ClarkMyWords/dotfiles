#!/bin/sh

main(){
    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
    :
    done

    lock.sh &
    systemctl suspend && dunstctl set-paused false
}

main
