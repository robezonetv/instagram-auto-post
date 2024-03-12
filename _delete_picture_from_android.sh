#!/bin/bash

_DIR="/storage/self/primary/DCIM"

# Delete uploaded picture
adb shell rm -f -rR $_DIR/tiger.jpg

# Flush application cache
adb shell pm clear com.sec.android.gallery3d
