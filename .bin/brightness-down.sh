#!/bin/sh

brightnessctl set 5%- -q
LEVEL=$(brightnessctl get)
echo $LEVEL > $HOME/.brightnessrc

