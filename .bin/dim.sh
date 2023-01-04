#!/bin/sh

main(){
    if command -v brightnessctl &> /dev/null
    then
        brightnessctl set 10% -q
    else
        for disp in $(xrandr --current | grep -E "connected" | grep -v "disconnected" | awk {'print $1'}); do
            xrandr --output $disp --brightness 0.1
        done
    fi
}

main
