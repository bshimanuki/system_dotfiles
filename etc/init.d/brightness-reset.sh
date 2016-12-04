#!/bin/sh

DEFAULT_BRIGHTNESS=70
BRIGHTNESS_FILE="/sys/class/backlight/acpi_video0/brightness"
SAVEFILE="/var/local/brightness/last_brightness"

if [[ -f $SAVEFILE ]];
then
    cat $SAVEFILE > $BRIGHTNESS_FILE
    #echo "Screen brightness reset to $(cat $BRIGHTNESS_FILE)."
else
   echo $DEFAULT_BRIGHTNESS > $BRIGHTNESS_FILE
    #echo "Screen brightness set to default ($DEFAULT_BRIGHTNESS)."
fi

