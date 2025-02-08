#!/bin/bash

pactl load-module module-null-sink media.class=Audio/Sink sink_name=pipewire_virtual_adapter sink_properties=device.description=VirtualMix channel_map=stereo
pw-link pipewire_virtual_adapter:monitor_FL alsa_output.pci-0000_0a_00.4.analog-stereo:playback_FL
pw-link pipewire_virtual_adapter:monitor_FR alsa_output.pci-0000_0a_00.4.analog-stereo:playback_FR
pw-link pipewire_virtual_adapter:monitor_FL alsa_output.usb-SteelSeries_Arctis_Nova_Pro_Wireless-00.analog-stereo:playback_FL
pw-link pipewire_virtual_adapter:monitor_FR alsa_output.usb-SteelSeries_Arctis_Nova_Pro_Wireless-00.analog-stereo:playback_FR
