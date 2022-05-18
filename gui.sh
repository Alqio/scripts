#!/bin/bash

cd ~


# Install Telegram
TELEGRAM_TAR=telegram.tar.xz
wget -O $TELEGRAM_TAR "https://telegram.org/dl/desktop/linux"
tar -xvf $TELEGRAM_TAR
mv Telegram/ ~/app
rm $TELEGRAM_TAR


# Install Webstorm
WEBSTORM_TAR=webstorm.tar.gz
wget -O $WEBSTORM_TAR "https://download.jetbrains.com/webstorm/WebStorm-2022.1.1.tar.gz"
tar -xvf $WEBSTORM_TAR
rm $WEBSTORM_TAR
WEBSTORM=$(find . -type d -name "WebStorm*")
mv $WEBSTORM ~/app


# Install chrome
CHROME=google-chrome-stable_current_amd64.deb
wget -O $CHROME "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install ./$CHROME
rm $CHROME
