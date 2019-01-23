#!/bin/sh

sudo -y apt-get update
sudo -y apt-get upgrade

sudo -y apt-get install ibus
sudo -y apt-get install ibus-hangul
sudo -y apt-get install fonts-unfonts-core

echo "install finish" 
echo "please reboot"
