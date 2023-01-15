#!/bin/bash

# Delete uploaded picture
adb shell rm -f -rR /sdcard/DCIM/Camera/tiger.jpg

# Flush application cache
adb shell pm clear com.sec.android.gallery3d
