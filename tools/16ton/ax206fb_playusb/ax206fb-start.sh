#!/bin/bash
sudo modprobe sysfillrect
sudo modprobe sysimgblt
sudo modprobe syscopyarea
sudo modprobe fb_sys_fops
sudo modprobe ax206fb video=vfb
sudo playusb -f /dev/fb1 -e 2> /dev/null &
sleep 1
sudo fbset -rgba 8,8,8,0 -depth 24 -fb /dev/fb1
sudo cat /usr/share/rb.raw > /dev/fb1
sleep 1
sudo cat /dev/zero > /dev/fb1
sudo fbi -noverbose -T 7 -t 6 -1 /usr/share/pixmaps/works.png -d /dev/fb1
