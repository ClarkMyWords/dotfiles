#!/bin/sh

main(){

    while [[ pgrep -x i3lock ]]
    do
        :
    done

    dunstctl set-paused false

}

main
