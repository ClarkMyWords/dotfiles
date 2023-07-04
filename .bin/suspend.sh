#!/bin/sh

main(){
    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
        :
    done

    systemctl suspend
}

main
