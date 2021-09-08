#!/bin/sh
# Add a second vertical monitor to the left using xrandr
# In order to launch it after login, copy this script in
# /etc/profile.d/ folder, and give it execution permissions.

main="DP-1"
extra="DP-2"

xrandr --output "$main" --primary --auto --output "$extra" --auto --rotate right --left-of "$main"
