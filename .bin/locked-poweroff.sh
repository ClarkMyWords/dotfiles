#!/bin/sh

# Only allow for poweroff.sh from this script if swaylock is running
pgrep -x swaylock && poweroff.sh
