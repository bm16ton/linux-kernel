#!/bin/sh
sudo modprobe sysfillrect
sudo modprobe sysimgblt
sudo modprobe syscopyarea
sudo modprobe fb_sys_fops
sudo modprobe ax206fb video=vfb
sudo playusb -f /dev/fb1 -e 2> /home/maddocks/playusb.log &
sleep 1.2
# sudo fbset -rgba 8,8,8,0 -depth 24 -fb /dev/fb1
sudo cat /dev/random > /dev/fb1
sudo cat /usr/share/pixmaps/rb.raw > /dev/fb1
sudo fbi -noverbose -T 7 -t 6 -1 /usr/share/pixmaps/works.png -d /dev/fb1
