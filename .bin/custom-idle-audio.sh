pgrep -x sway-audio-idle > /dev/null && (killall sway-audio-idle-inhibit && (sway-audio-idle-inhibit > /home/clark/temp.txt)) || (sway-audio-idle-inhibit > /home/clark/temp.txt)
