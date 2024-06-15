#!/bin/sh

MIC_MUTED=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [[ $MIC_MUTED == "yes" ]]; then
    micValue=1
else
    micValue=0
fi

brightnessctl --device=platform::micmute set $micValue -q

SPEAKER_MUTED=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [[ $SPEAKER_MUTED == "yes" ]]; then
    speakerValue=1
else
    speakerValue=0
fi

brightnessctl --device=platform::mute set $speakerValue -q

