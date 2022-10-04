#!/bin/sh

# Stage 3:
#    1) This one is easy, just sleep when idle

custom_swayidle(){
    (swayidle -w timeout 60 suspend.sh after-resume custom-idle-3-desktop.sh) &
}

main(){
    wake.sh
    # Then run the custom idle manager
    pgrep -x swayidle > /dev/null && (killall swayidle && custom_swayidle) || custom_swayidle
}

main
