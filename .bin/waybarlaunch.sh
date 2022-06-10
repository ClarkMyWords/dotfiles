#!/bin/bash

killall -q waybar

waybar & disown 2>&1
