#!/bin/bash
kill $(pidof /opt/dpf/ax206/mini-dpf-AX206-fb/playusb/playusb)
killall /opt/dpf/ax206/mini-dpf-AX206-fb/playusb/playusb 
# kill $playusbPid
modprobe -r ax206fb
