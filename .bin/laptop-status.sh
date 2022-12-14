#!/bin/sh

# pulsein.limit="100%" pulseout.limit="100%" pulsein.percent_change="1%" pulseout.percent_change="1%" pulsein.showbars=true pulseout.showbars=true pulsein.showdevicename=true pulseout.showdevicename=true pulseout.alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink="Speakers" pulsein.alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_6__source="Microphone"

bumblebee-status -m brightness nic battery date time \
    -p time.format="%H:%M:%S" \
    date.format="%A, %B %e, %Y" \
    nic.states="^down" \
    brightness.step=0 \
    -t clarks-theme
