#!/bin/bash

LOCKFILE=/tmp/lock

while [[ -e $LOCKFILE ]]
do
  :
done

lock.sh && loginctl suspend

