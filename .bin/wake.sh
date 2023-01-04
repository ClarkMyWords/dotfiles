#!/bin/sh

main(){
    if command -v brightnessctl &> /dev/null
    then
        restore-brightness.sh

    else
        for disp in $(xrandr --current | grep -E "connected" | grep -v "disconnected" | awk {'print $1'}); do
            xrandr --output $disp --brightness 1
        done
    fi
}

main
