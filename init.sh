#!/bin/bash

cd ~

mkdir app
mkdir workspace

# Install default packages
sudo apt-get update
sudo apt-get install -y vim git python-is-python3

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish -y 
chsh -s `which fish`

# Create SSH key
ssh-keygen -t ed25519

# Move vimrc, don't replace if already exists
cp -n .vimrc ~/.vimrc
