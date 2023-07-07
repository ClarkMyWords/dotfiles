#!/bin/sh

dunstctl set-paused true
pgrep -x dunst > /dev/null 2>&1 && killall -q dunst || :
pgrep -x rofi > /dev/null 2>&1 && killall -q rofi || :

i3lock --ignore-empty-password --show-failed-attempts --image=$HOME/.config/sysimages/LockScreen.png &
pid=$!

while kill -0 $pid 2> /dev/null; do
    :
done
dunstctl set-paused false
