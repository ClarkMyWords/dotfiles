#!/bin/bash

lock(){
    dunstctl set-paused true
    pgrep -x swaylock > /dev/null && : || swaylock -KLeftu --image=$HOME/.config/sysimages/LockScreen.png
    dunstctl set-paused false
}

pgrep -x rofi > /dev/null && (killall -q rofi && lock) || lock



