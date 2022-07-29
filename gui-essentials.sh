#!/bin/bash

# Install chrome
CHROME=google-chrome-stable_current_amd64.deb
wget -O $CHROME "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install ./$CHROME
rm $CHROME
