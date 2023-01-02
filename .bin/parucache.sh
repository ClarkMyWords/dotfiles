#!/bin/sh

OLD_DIR=$(pwd)
WORK_DIR=$HOME/.cache/paru/clone
PKGS=/tmp/pkg.txt
pacall.sh > $PKGS

cd $WORK_DIR
for f in $WORK_DIR/*; do
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

cd $OLD_DIR

