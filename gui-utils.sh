#!/bin/bash

cd ~

# Install Telegram
TELEGRAM_TAR=telegram.tar.xz
wget -O $TELEGRAM_TAR "https://telegram.org/dl/desktop/linux"
tar -xvf $TELEGRAM_TAR
mv Telegram/ ~/app
rm $TELEGRAM_TAR

# Install Spotify
snap install spotify

