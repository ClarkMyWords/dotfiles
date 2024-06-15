#!/bin/sh

pacman -Qi | grep -E "Name*" | awk '{print $3}'
