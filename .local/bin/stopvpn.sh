#!/bin/sh

pgrep -x openconnect > /dev/null 2>&1 && (sudo killall openconnect > /dev/null 2>&1) || :

