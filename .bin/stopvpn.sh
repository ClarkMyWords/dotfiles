#!/bin/sh

pgrep -x openconnect > /dev/null && (sudo killall openconnect > /dev/null) || :

