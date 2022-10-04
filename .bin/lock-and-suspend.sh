#!/bin/sh

main(){
    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
    :
    done

    lock.sh && loginctl suspend
}

main
