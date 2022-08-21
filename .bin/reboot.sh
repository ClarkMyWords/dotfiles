#!/bin/sh

LOCKFILE=/tmp/lock

while [[ -e $LOCKFILE ]]
do
  :
done

loginctl reboot
