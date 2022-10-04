#!/bin/sh

main(){
    LOCKFILE=/tmp/lock

    while [[ -e $LOCKFILE ]]
    do
        :
    done

    loginctl suspend
}

main
