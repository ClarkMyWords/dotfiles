#!/bin/sh
set -xe

# First, lock
lock.sh

# Wait until swaylock is running
pgrep -x swaylock > /dev/null

while [ $? == 1 ]
do
    pgrep -x swaylock > /dev/null
done

# We read through the relevant config files and execute line by line
SHARED=$HOME/.config/sway_configs/shared_config
DESKTOP=$HOME/.config/sway_configs/desktop_config
while read -r line; do
    swaymsg "$line"
done <$SHARED
while read -r line; do
    swaymsg "$line"
done <$DESKTOP
