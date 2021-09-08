#!/bin/sh
# change the pulseaudio volume on all sinks
# This could be used with 'xbindkeys' to connect the script 
# to a keyboard keypress.

USAGE="
invalid arguments.\n
usage:\n
\tvolume.sh up:\tturn volume up\n
\tvolume.sh down:\tturn volume down"

VOLUME_STEP='5%'
UP='+'
DOWN='-'

for SINK in `pacmd list-sinks | grep 'index:' | cut -b12-`
do
  case $1 in
    "up")   pactl set-sink-volume $SINK $UP$VOLUME_STEP;;
    "down") pactl set-sink-volume $SINK $DOWN$VOLUME_STEP;;
    *)      echo $USAGE; exit;
  esac
done
