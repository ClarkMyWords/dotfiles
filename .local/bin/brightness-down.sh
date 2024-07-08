#!/bin/sh

# 13 is 5% of 255 (at least in 8-bit unsigned integers)
min_brightness=13

brightness=$(brightnessctl get)
if (( $brightness <= $min_brightness )); then
    brightnessctl set 5% -q
else
    brightnessctl set 5%- -q
fi

LEVEL=$(brightnessctl get)
echo $LEVEL > $HOME/.brightnessrc

