#!/bin/sh

PKGS=/tmp/pkg.txt
pacall.sh > $PKGS

for f in /home/clark/.cache/paru/clone/*; do
  pkg=$(rev <<< "${f}")
  pkg=$((cut -d "/" -f 1) <<< "${pkg}")
  pkg=$(rev <<< "${pkg}")
  if grep -Fxq $pkg $PKGS
    then
      paccache -r -c $f
      paccache -ruk0 -c $f
    else
      rm -rf $f
  fi
done

