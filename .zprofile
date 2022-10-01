#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export RUNLEVEL=3

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec dbus-run-session sway
    exec hash dbus-update-activation-environment 2>/dev/null && \
        dbus-update-activation-environment --all DISPLAY WAYLAND_DISPLAY SWAYSOCK
    exec dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus
fi

