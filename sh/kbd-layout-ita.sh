#!/bin/bash

# exit if there are errors
set -e

# get the current keyboard layout
currentLayout=$(cat /etc/default/keyboard | awk -F "=" '/XKBLAYOUT/ {print $2}')
echo "current keyboard layout: $currentLayout"

# set keyboard layout
L='it' 
echo "setting keyboard layout: $L"
sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard

# restart keyboard service
sudo udevadm trigger --subsystem-match=input --action=change
