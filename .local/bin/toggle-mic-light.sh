#!/bin/sh

value=$(brightnessctl --device=platform::micmute get)

case $value in

    0)
        newValue=1 ;;
    
    1)
        newValue=0 ;;

esac

brightnessctl --device=platform::micmute set $newValue > /dev/null 2>&1

