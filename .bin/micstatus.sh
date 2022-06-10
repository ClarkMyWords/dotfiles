#!/bin/bash

MUTED=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [[ $MUTED == "yes" ]]; then
    echo "Mic: Muted"
else
    echo "Mic: Live"
fi

