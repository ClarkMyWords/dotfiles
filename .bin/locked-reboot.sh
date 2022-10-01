#!/bin/sh

# Only allow for reboot.sh from this script if swaylock is running
pgrep -x swaylock && reboot.sh
