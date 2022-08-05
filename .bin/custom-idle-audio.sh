pgrep -x sway-audio-idle > /dev/null && (killall sway-audio-idle-inhibit && sway-audio-idle-inhibit &) || sway-audio-idle-inhibit &
