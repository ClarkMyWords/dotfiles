#!/bin/sh

# Functionality is working without the script? Must be hardware, Fn + Space

value=$(brightnessctl --device=tpacpi::kbd_backlight get)

case $value in

    0)
        newValue=1 ;;
    
    1)
        newValue=2 ;;

    2)
        newValue=0 ;;
esac

brightnessctl --device=tpacpi::kbd_backlight set $newValue -q

