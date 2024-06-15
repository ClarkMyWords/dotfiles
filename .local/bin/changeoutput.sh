#!/bin/bash

current_dev=$(pactl get-default-sink)

case $current_dev in

    ('alsa_output.pci-0000_08_00.4.analog-stereo')
        pactl set-default-sink alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo ;;
    ('alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo')
        pactl set-default-sink alsa_output.pci-0000_08_00.4.analog-stereo

esac

sleep 1

