#!/usr/bin/env bash
# author: unknown
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ cirrus <cirrus@archlinux.info>
# ░▓ code   ▓ https://gist.github.com/cirrusUK
# ░▓ mirror ▓ http://cirrus.turtil.net
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
declare -A LABELS
declare -A COMMANDS

###
# List of defined 'bangs'
# wmp (wattr x 0x0320000e) (wattr y 0x0320000e)

lsw|grep -v 0x00800001 > /tmp/window_list.txt

while read p; do
	wm_name=$(xprop -id $p | grep _NET_WM_NAME | cut -d '"' -f 2 | sed 's/ //g')
	wm_class=$(xprop -id $p | grep WM_CLASS | cut -d '"' -f 2 | sed 's/ //g')
	echo $wm_name
	echo $wm_class
	COMMANDS["$p$wm_class:$wm_name"]='wmp $(wattr x '$p') $(wattr y '$p')'
	LABELS["$p$wm_class:$wm_name"]=""
done < /tmp/window_list.txt

################################################################################
# do not edit below
################################################################################
##
# Generate menu
##
function print_menu()
{
    for key in ${!LABELS[@]}
    do
  echo "$key    ${LABELS}"
     #   echo "$key    ${LABELS[$key]}"
     # my top version just shows the first field in labels row, not two words side by side
    done
}
##
# Show rofi.
##
function start()
{
    # print_menu | rofi -dmenu -p "?=>" 
    print_menu | rofi -dmenu -i -p "quick-menu: "

}


# Run it
value="$(start)"

# Split input.
# grab upto first space.
choice=${value%%\ *}
# graph remainder, minus space.
input=${value:$((${#choice}+1))}

##
# Cancelled? bail out
##
if test -z ${choice}
then
    exit
fi

# check if choice exists
if test ${COMMANDS[$choice]+isset}
then
    # Execute the choice
    eval echo "Executing: ${COMMANDS[$choice]}"
    eval ${COMMANDS[$choice]}
else
 eval  $choice | rofi
 # prefer my above so I can use this same script to also launch apps like geany or leafpad etc (DK) 
 #   echo "Unknown command: ${choice}" | rofi -dmenu -p "error"
fi
