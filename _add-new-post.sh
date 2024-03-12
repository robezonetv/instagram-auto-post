#!/bin/bash

./_upload_picture_to_android.sh
sleep 15
./100-run-instagram
sleep 15
./101-new-post
sleep 5
./102-new-post
sleep 5
./103-new-post
sleep 5
./104-new-post "Tak jsme zvladli i MTP upload na androin telefon a k tomu i nejaky novy obrazek z nataceni ^.^ #twitch #live "
sleep 10
./004-close-instagram 
