#!/bin/sh

main(){
    restore-brightness.sh
    swaymsg "output * dpms on"
}

main
