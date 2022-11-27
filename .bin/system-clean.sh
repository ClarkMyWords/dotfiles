#!/bin/sh

LOCKFILE=/tmp/lock
LOGFILE=/home/clark/sysclean.log

echo $$ > $LOCKFILE

paru -c --noconfirm
paccache -r
paccache -ruk0
/home/clark/.bin/parucache.sh
paru -Scc --noconfirm

echo $(date) >> $LOGFILE

rm $LOCKFILE
