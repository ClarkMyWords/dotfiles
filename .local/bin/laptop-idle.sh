#!/bin/sh

xidlehook \
    --detect-sleep \
    --not-when-audio \
    --not-when-fullscreen \
    --timer 120 dim.sh wake.sh \
    --timer 240 lock-and-suspend.sh wake.sh
