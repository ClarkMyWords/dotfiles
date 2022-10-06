#!/bin/sh

main(){
    if command -v brightnessctl &> /dev/null
    then
        restore-brightness.sh
    fi
    swaymsg "output * dpms on"
}

main
