#!/bin/bash

if pgrep -x "lemonbar"; then
	pkill lemonbar &
else
	if [ -f "/sys/class/power_supply/BAT0/capacity" ]; then
		barLaptop &
		#hsetroot -tile ~/.local/share/backgrounds/tilingGengar2.png
		#setbg
		if pgrep -x "picom" &>/dev/null; then
			setbg
		fi
	else
		barDesktop &
		if pgrep -x "picom" &>/dev/null; then
			setbg
		fi

		#setbg
		#hsetroot -tile ~/.local/share/backgrounds/tilingGengar2.png
	fi
fi

exit 0
