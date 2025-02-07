#!/bin/bash

# Launch Waybar if not already running
if ! pgrep -x "waybar" > /dev/null; then
    waybar &
fi
