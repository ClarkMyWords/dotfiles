#!/bin/sh

value=$(brightnessctl --device=platform::mute get)

case $value in

    0)
        newValue=1 ;;
    
    1)
        newValue=0 ;;

esac

brightnessctl --device=platform::mute set $newValue > /dev/null -q

