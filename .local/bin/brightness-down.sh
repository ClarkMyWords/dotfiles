#!/bin/sh

min_brightness=5

brightness=$(brightnessctl get)
if (( $brightness <= $min_brightness )); then
    brightnessctl set 5% -q
else
    brightnessctl set 5%- -q
fi

LEVEL=$(brightnessctl get)
echo $LEVEL > $HOME/.brightnessrc

