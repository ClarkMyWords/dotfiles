#!/bin/sh

#$mod="Mod4"
#$term="kitty"
#$menu="rofi -modi drun -show | xargs swaymsg exec --"

# First, lock
lock.sh

# Wait until swaylock is running
pgrep -x swaylock > /dev/null

while [ $? == 1 ]
do
    pgrep -x swaylock > /dev/null
done

# Once the lock has run, we do all the dangerous sway things
swaymsg "bindsym Mod4+Return exec kitty"
swaymsg "bindsym Mod4+q kill"
swaymsg "bindsym Mod4+space exec rofi -modi drun -show | xargs swaymsg exec --"
swaymsg "bindsym Mod4+b exec bwmenu --clear=60 --auto-lock 360"
swaymsg "bindsym Mod4+n exec rofi-connman"
swaymsg 'bindsym Mod4+Escape exec rofi -show power-menu -modi "power-menu:rofi-power-menu"'

swaymsg 'bindsym Mod4+Shift+z exec swaymsg "reload"'

swaymsg "workspace 99; exec kitty sway-audio-idle-inhibit"
swaymsg "workspace 5; exec kitty btop;"
swaymsg 'assign [class="discord"] workspace 4' && swaymsg "exec discord"
swaymsg "workspace 3; exec hamsket;"
swaymsg "workspace 2; exec firefox;"
swaymsg "workspace 1; exec kitty;"

