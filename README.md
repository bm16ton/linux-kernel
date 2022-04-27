Linux kernel 16ton
============

last git commit log
5.17-rc2 prepatced IRDA, irda sir rc, ssd1306 aux display, ath10k restrictions removed, kernel wifi restrictions removed, i2c hd 16x2 lcd better then stock kernels, stm32 usb to spidev,gpio, ftdi mpsse spi,i2c,gpio, ch341 usb to i2c,gpio i2c untested, qcom eud usb debugger, rtl 8812au and rtl 88x2bu drivers added restrictions removed added extra non std wifi channels to 8812au as a proof of concept for hams etc possibly its cousin the 88x2bu can as well, this ability is very rare in wifi cards usally the freq is limited via firmware, uhg if you use my config or simply include include/linux/firmware/regulatory.db in the build and disable crda then you wont have to patch your reg domain rules and can simply switch back to regukatory compliance by booting a diff kernel. the wii nunchuck has a mouse driver in here sumwhere, adafruits seesaw has a pwm/adc driver. Im sure more im not remembering.

Added;

spi/gpio/uio irq driver for f103 firmware; https://github.com/bm16ton/spi-tiny-usb-fork

spi/i2c drivers for ft4232/ft2232 requires eeprom to written with product ft4232H-16ton or ft2232H-16ton 

	ftdi_sio will ignore first two interfaces(with product ft4232H-16ton or ft2232H-16ton) , 1st interface will become spi 2nd i2c, i2c has kernel parameter to switch 100khz/400khz

	spi devices IE driver/pins/etc need to be added drivers/usb/misc/ft232h-intf.c 

adafruit seesaw i2c driver (currently only supports adc/pwm)

added extra device/products ids for cp based usb2usb networking devices

added extra device/products ids for lucent us720

brought irda back from dead (thankyou https://github.com/cschramm/irda.git)

leds-tinyusb driver for tinyusb mcu firmware (currentl portenta h7 but minor adjustments for 1 led on all tinyusb mcus); https://github.com/bm16ton/portenta-tinyusb/tree/master/examples/device/cdc_tripple-vendor/src/

Removed kernel level wireless restrictions (not driver/firmware restrictions)

Removed ath9k ath10k wireless restriction no-ir and radar restrictions readded channels 2.4ghz up to 14 etc 

mwifiex add support for usb 8897

Better hd44780 i2c driver

ssd1306 auxdisplay driver

ax206fb fbdev driver for hackedkeychain usb digital picture frames, requires userland tool ill put in kernels/tool folder

vernier usb thermometer switch back to ldusb 

wii nunchuck i2c mouse driver.

builtin relaxed crda reg in include/linux/firmware/regulatory.db (compile builtin like firmware)

more that i either forgot to mention or coming soon.
