#!/bin/bash

# Stage Two:
#    1) Begin and infinite loop
#    2) While swaylock is running as a daemon, do nothing
#    3) As soon as swaylock ends, kill custom-idle-3, start custom idle-2, and kill self
#
#    NOTE: This is probably not runtime efficient, but this only runs when the machine is locked, so it shouldn't be that big of a deal.

kill_stage_2(){
    pgrep -x swayidle > /dev/null && killall swayidle || :
    pgrep -x custom-idle-3.sh > /dev/null && killall custom-idle-3.sh || :
}

# Inhibit dunst
dunstctl set-paused true
# Lock
lock.sh
# Kill the parent process
pgrep -x custom-idle-1.sh > /dev/null && killall custom-idle-1.sh || :
# Run the sleep daemon
custom-idle-3.sh &

# Run the grep, we only want the error code
pgrep -x swaylock > /dev/null
idle_running=$[ $? == 0 ]

while [ $idle_running == 1 ]
do
    pgrep -x swaylock > /dev/null
    idle_running=$[ $? == 0 ]
done

kill_stage_2
custom-idle-1.sh
dunstctl set-paused false
# Overkill
pgrep -x custom-idle-2.sh > /dev/null && killall custom-idle-2.sh || :

