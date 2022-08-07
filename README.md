# Instagram auto-post script for Linux

Tested on Android phone Samsung Galaxy A3 2017 during online stream on Twitch.

Auto-Post simulates people when giving posts to instagram. So it's comparing UI of Instagram Application
with prepared templates and recognize where is it, and how can continue. **You must edit it to your mobile phone!**

Comparing is defined over ImageMagick tools. And touches and write down text is done over ADB tool.

## Preparation

- Linux Desktop
- Android phone
  - enabled USB debugging
  - installed and login instagram app
  - in Developer Options enable Stay awake
- apt install scrcpy imagemagick

## Step-by-step guide

1. Connect your phone to Linux computer
2. Run command 'scrcpy' (you can see same things on phone and on your screen)
