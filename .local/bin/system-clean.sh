#!/bin/sh

LOCKFILE=/tmp/lock

echo $$ > $LOCKFILE

echo "Removing unndeeded dependencies:"
paru -c --noconfirm
echo "Removing old packages"
paccache -r
echo "Removing all uninstalled packages"
paccache -ruk0

$HOME/.bin/parucache.sh

rm $LOCKFILE
