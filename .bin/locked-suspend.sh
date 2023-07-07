#!/bin/sh

# Only allow for suspend.sh from this script if swaylock is running
pgrep -x i3lock && suspend.sh
