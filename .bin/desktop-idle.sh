#!/bin/sh

xidlehook \
    --detect-sleep \
    --not-when-audio \
    --not-when-fullscreen \
    --timer 360 lock-and-suspend.sh wake.sh
