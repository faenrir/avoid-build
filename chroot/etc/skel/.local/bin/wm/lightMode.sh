#!/usr/bin/env bash

export SAMU_THEME="LIGHT"
echo "LIGHT" > ~/.config/X11/theme

setbg ~/.local/share/backgrounds/light.jpg

(sleep 1; barSwitch.sh & (sleep 1; barSwitch.sh)) &> /dev/null

xsettingsd -c ~/.config/xsettingsd/xsettingsd-light.conf &

cp ~/.config/kitty/themes/rose-pine-dawn.conf ~/.config/kitty/theme.conf

for kid in $(pgrep kitty); do
	kitty @ --to unix:/tmp/kitty-$kid set-colors ~/.config/kitty/theme.conf
done

cp ~/.config/vim/vimrc-light ~/.config/vim/vimrc
