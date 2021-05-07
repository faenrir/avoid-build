#!/bin/bash

export DISPLAY=:0
export XAUTHORITY=~/.Xauthority

connected_mons=$(cat /sys/class/drm/*/status | grep -v disconnected | wc -l)

if [[ $connected_mons -gt 1 ]]; then
	mons -s
else
	xrandr --auto
fi
