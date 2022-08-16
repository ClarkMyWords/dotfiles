#!/bin/sh

LOCKFILE=/tmp/lock

echo $$ > $LOCKFILE
sleep 5

paru -c --noconfirm
paccache -r
paccache -ruk0
parucache.sh
paru -Scc --noconfirm

rm $LOCKFILE
