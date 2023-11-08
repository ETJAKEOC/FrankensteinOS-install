#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in FrankensteinOS-install Folder."
    echo "Please use ./install.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the FrankensteinOS-install Project"
git clone https://github.com/ETJAKEOC/FrankensteinOS-install

echo "Executing FrankensteinOS-install Script"

cd $HOME/FrankensteinOS-install

exec ./install.sh
