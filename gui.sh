#!/bin/bash

cd ~


# Install Telegram
wget https://telegram.org/dl/desktop/linux
TELEGRAM_TAR=$(find . -type f -name "tsetup*")
tar -xvf $TELEGRAM_TAR
mv Telegram/ ~/app
rm $TELEGRAM_TAR


# Install Webstorm
wget https://www.jetbrains.com/webstorm/download/download-thanks.html?platform=linux
WEBSTORM_TAR=$(find . -type f -name "WebStorm*")
tar -xvf $WEBSTORM_TAR
rm $WEBSTORM_TAR
WEBSTORM=$(find . -type d -name "WebStorm*")
mv $WEBSTORM ~/app


# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
