#!/bin/sh

killall -q waybar

waybar & disown 2>&1
