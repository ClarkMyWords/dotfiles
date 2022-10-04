#!/bin/sh

# Stage Two:
#    1) Begin and infinite loop
#    2) While swaylock is running as a daemon, do nothing
#    3) As soon as swaylock ends, kill custom-idle-3, start custom idle-2, and kill self
#
#    NOTE: This is probably not runtime efficient, but this only runs when the machine is locked, so it shouldn't be that big of a deal.


main(){
    # Lock
    lock.sh
    # Kill the parent process
    pgrep -x custom-idle-1-desktop.sh > /dev/null && killall custom-idle-1-desktop.sh || :
    # Run the sleep daemon
    custom-idle-3-desktop.sh &

    # Run the grep, we only want the error code
    pgrep -x swaylock > /dev/null
    while [ $? == 0 ]
    do
        pgrep -x swaylock > /dev/null
    done

    pgrep -x swayidle > /dev/null && killall swayidle || :
    pgrep -x custom-idle-3-desktop.sh > /dev/null && killall custom-idle-3-desktop.sh || :
    custom-idle-1-desktop.sh
    # Overkill
    pgrep -x custom-idle-2-desktop.sh > /dev/null && killall custom-idle-2-desktop.sh || :
}

main
