#!/bin/bash

_DIR="/storage/self/primary/DCIM"

# Upload picture to mobile
adb push ./tiger.jpg $_DIR

# Update picture in gallery
for i in $(adb shell "find $_DIR -type f"); do
    adb shell "am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_FILE -d file://$i"; 
done
