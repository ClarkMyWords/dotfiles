#!/bin/sh

bumblebee-status -m pulsein pulseout nic date time \
    -p time.format="%H:%M:%S" \
    date.format="%A, %B %e, %Y" \
    nic.states="^down" \
    pulsectl.autostart=true \
    pulsein.limit="100%" pulseout.limit="100%" pulsein.showbars=true pulseout.showbars=true pulsein.percent_change="1%" pulseout.percent_change="1%" pulsein.showdevicename=true pulseout.showdevicename=true \
    pulsein.alsa_output.usb-0c76_USB_PnP_Audio_Device-00.analog-stereo.monitor="Fifine Microphone" \
    pulsein.alsa_input.usb-046d_HD_Pro_Webcam_C920_1632DD2F-02.analog-stereo="Webcam Microphone" \
    pulseout.alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo="HyperX Cloud II Headphones" \
    pulseout.alsa_output.pci-0000_08_00.4.analog-stereo="Speakers" \
    -t clarks-theme
