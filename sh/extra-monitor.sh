#!/bin/sh
# Add a second vertical monitor to the left using xrandr

main="DP-1"
extra="DP-2"

xrandr --output "$extra" --mode 1920x1080 --rotate right && xrandr --output "$main" --auto --output "$extra" --auto --rotate right --left-of "$main"
