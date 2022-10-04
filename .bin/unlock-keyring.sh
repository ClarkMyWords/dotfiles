#!/bin/sh
eval 'gnome-keyring-daemon --start'
export $(gnome-keyring-daemon)
