#!/bin/bash

# Upload picture to mobile
adb push ./tiger.jpg /sdcard/DCIM/Camera

# Update picture in gallery
for i in $(adb shell "find /sdcard/DCIM/Camera/ -type f"); do
    adb shell "am broadcast -a android.intent.action.MEDIA_SCANNER_SCAN_FILE -d file://$i"; 
done
