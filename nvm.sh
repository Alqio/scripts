#!/bin/fish

# Install fisher
wget https://git.io/fisher
source fisher
fisher install jorgebucaran/fisher

rm fisher

# Install nvm
fisher install jorgebucaran/nvm.fish
