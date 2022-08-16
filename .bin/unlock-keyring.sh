#!/bin/bash
eval 'gnome-keyring-daemon --start'
export $(gnome-keyring-daemon)
