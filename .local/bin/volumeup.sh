#!/bin/sh

max_volume=100

volume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/[^0-9]*//g')"
if (( $volume >= $max_volume )); then
    pactl set-sink-volume @DEFAULT_SINK@ $max_volume%
else
    pactl set-sink-volume @DEFAULT_SINK@ +5%
fi

