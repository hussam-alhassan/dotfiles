#! /bin/bash

DIRS=(foot git i3status sway swaylock)

for DIR in "${DIRS[@]}"; do
  cp -r ~/.config/$DIR .config/
done
