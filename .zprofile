#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

RUNTIME_DIR="/tmp/runtime"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
    export SDL_VIDEODRIVER=wayland
    export _JAVA_AWT_WM_NONREPARENTING=1
    export QT_QPA_PLATFORM=wayland
    export XDG_CURRENT_DESKTOP=sway
    export XDG_SESSION_DESKTOP=sway
    if [[ ! -d $RUNTIME_DIR ]]; then
        mkdir $RUNTIME_DIR 
    fi
    export XDG_RUNTIME_DIR=/tmp/runtime
    export RUNLEVEL=3
    exec dbus-run-session sway
fi

