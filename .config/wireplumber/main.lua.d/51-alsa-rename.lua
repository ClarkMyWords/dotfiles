rule1 = {
  matches = {
    {
      {"device.name", "equals", "alsa_card.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00"},
    },
  },
  apply_properties = {
    ["device.nick"] = "HyperX Cloud II Headset",
    ["device.disabled"] = false,
  }
}

table.insert(alsa_monitor.rules, rule1)

rule2 = {
  matches = {
    {
      {"device.name", "equals", "alsa_card.usb-0c76_USB_PnP_Audio_Device-00"},
    },
  },
  apply_properties = {
    ["device.nick"] = "Amazon Basics Speakers",
    ["device.disabled"] = false,
  }
}

table.insert(alsa_monitor.rules, rule2)
