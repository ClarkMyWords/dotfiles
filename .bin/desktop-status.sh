#!/bin/sh

# pulsein.limit="100%" pulseout.limit="100%" pulsein.showbars=true pulseout.showbars=true pulsein.percent_change="1%" pulseout.percent_change="1%" pulsein.showdevicename=true pulseout.showdevicename=true pulseout.alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo="HyperX Cloud II Headphones" pulsein.alsa_output.usb-0c76_USB_PnP_Audio_Device-00.analog-stereo.monitor="Fifine Microphone" pulseout.alsa_output.pci-0000_08_00.4.analog-stereo="Speakers" \

bumblebee-status -m nic date time \
    -p time.format="%H:%M:%S" \
    date.format="%A, %B %e, %Y" \
    nic.states="^down" \
    brightness.step=0 \
    -t clarks-theme
