#!/bin/sh

LEVEL=$(cat $HOME/.brightnessrc)
brightnessctl set $LEVEL -q
