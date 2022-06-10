#!/bin/bash

# Stage One:
#    1) kill all active swayidle instances and run the custom swayidle function
#        1a) This and the next step will use the functionality to killall if they exist, and not otherwise
#    2) kill all active sway-audio-idle-inhibit instances and run the audio idle
#    3) start Stage 2
#    4) start Stage 3
#        4a) Stage 3 will kill these processes

custom_swayidle(){
    (swayidle -w timeout 300 custom-idle-2.sh) &
}

pgrep -x swayidle > /dev/null && (killall swayidle && custom_swayidle) || custom_swayidle
