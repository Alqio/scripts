#!/bin/bash

cd ~

mkdir app
mkdir workspace



# Install vim
sudo apt install vim -y

# Install git
sudo apt install git -y

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish -y 
chsh -s `which fish`
