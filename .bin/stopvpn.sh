#!/bin/bash

pgrep -x openconnect > /dev/null && (sudo killall openconnect) || :

