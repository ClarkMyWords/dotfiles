#!/bin/sh

LOCKFILE=/tmp/lock

echo $$ > $LOCKFILE

borg create                                           \
  --progress                                          \
  --exclude-from /home/clark/.config/borg/EXCLUDEFILE \
                                                      \
  ::'{hostname}-{now}'                                \
  /boot                                               \
  /etc                                                \
  /home                                               \
  /opt                                                \
  /root                                               \
  /usr                                                \
  /var

rm $LOCKFILE
