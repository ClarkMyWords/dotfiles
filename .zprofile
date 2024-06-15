#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

# I think SDDM/LightDM handles this (?)
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#	startx
#fi
