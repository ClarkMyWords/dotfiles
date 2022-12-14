#!/bin/sh

# Exec pipewire functions in order

pipewire &

pgrep -x pipewire > /dev/null

while [ $? == 1 ]
do
    pgrep -x > pipewire /dev/null
done

pipewire-pulse &

pgrep -x pipewire-pulse > /dev/null

while [ $? == 1 ]
do
    pgrep -x > pipewire-pulse /dev/null
done

wireplumber &

pgrep -x wireplumber > /dev/null

while [ $? == 1 ]
do
    pgrep -x > wireplumber > /dev/null
done

exec custom-idle-1-desktop.sh
