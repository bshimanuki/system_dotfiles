#!/bin/sh

BRIGHTNESS_FILE="/sys/class/backlight/acpi_video0/brightness"
SAVEFILE="/var/local/brightness/last_brightness"

mkdir -p $(dirname $SAVEFILE)

cat $BRIGHTNESS_FILE > $SAVEFILE
#echo "Current screen brightness saved as $(cat $SAVEFILE)."
