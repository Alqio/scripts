#!/bin/bash

# Requires fish to be installed
fishIsInstalled=$(which fish)

if [ $fishIsInstalled -ne 0 ]; then
    echo "Fish not found. Install it first."
    exit 1
fi

# Install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install nvm
fisher install jorgebucaran/nvm.fish

