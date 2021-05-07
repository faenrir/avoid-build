#!/usr/bin/env bash

export SAMU_THEME="DARK"
echo "DARK" > ~/.config/X11/theme

setbg ~/.local/share/backgrounds/dark.jpg

(sleep 1; barSwitch.sh & (sleep 1; barSwitch.sh)) &> /dev/null

xsettingsd -c ~/.config/xsettingsd/xsettingsd-dark.conf &

cp ~/.config/kitty/themes/gruvbox-dark.conf ~/.config/kitty/theme.conf

for kid in $(pgrep kitty); do
	kitty @ --to unix:/tmp/kitty-$kid set-colors ~/.config/kitty/theme.conf
done

cp ~/.config/vim/vimrc-dark ~/.config/vim/vimrc
