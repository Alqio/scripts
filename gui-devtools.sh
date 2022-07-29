#!/bin/bash

cd ~

# Install Webstorm
WEBSTORM_TAR=webstorm.tar.gz
wget -O $WEBSTORM_TAR "https://download.jetbrains.com/webstorm/WebStorm-2022.1.1.tar.gz"
tar -xvf $WEBSTORM_TAR
rm $WEBSTORM_TAR
WEBSTORM=$(find . -type d -name "WebStorm*")
mv $WEBSTORM ~/app


# Install PyCharm
PYCHARM_TAR=pycharm.tar.gz
wget -O $PYCHARM_TAR "https://download.jetbrains.com/python/pycharm-professional-2022.2.tar.gz"
tar -xvf $PYCHARM_TAR
rm $PYCHARM_TAR
WEBSTORM=$(find . -type d -name "WebStorm*")
mv $PYCHARM_TAR ~/app


# Install VS code
VSCODE_DEB=vscode.deb
wget -O $VSCODE_DEB "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo apt install ./$VSCODE_DEB -y
rm $VSCODE_DEB