#!/bin/bash
modprobe ax206fb
/opt/dpf/ax206/mini-dpf-AX206-fb/playusb/playusb  -f /dev/fb1 -i 100 &
# /opt/dpf/ax206/mini-dpf-AX206-fb/playusb/playusb  -f /dev/fb1 -e &
export playusbPid=$! 
fbset -rgba 8,8,8,0 -depth 24 -fb /dev/fb1

