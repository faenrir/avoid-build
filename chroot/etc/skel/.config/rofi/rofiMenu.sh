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

COMMANDS["duckduckgo"]='~/.config/rofi/RofiFtw/suggest ddg'
LABELS["duckduckgo"]=""

COMMANDS["shopping"]='~/.config/rofi/RofiFtw/suggest amazon'
LABELS["shopping"]=""

COMMANDS["wiki"]='~/.config/rofi/RofiFtw/suggest wikipedia'
LABELS["wiki"]=""

COMMANDS["arch"]='~/.config/rofi/RofiFtw/suggest archwiki'
LABELS["arch"]=""

COMMANDS["youtube"]='~/.config/rofi/RofiFtw/suggest youtube'
LABELS["youtube"]=""

COMMANDS["musicDownload"]='~/.config/rofi/RofiFtw/suggest deezer'
LABELS["musicDownload"]=""

COMMANDS["radio"]='~/.config/rofi/rofiMenuRadio.sh'
LABELS["radio"]=""

COMMANDS["television"]='~/.config/rofi/rofiMenuTv.sh'
LABELS["television"]=""

COMMANDS["soundVisualizer"]='kitty cli-visualizer'
LABELS["soundVisualizer"]=""

COMMANDS["soundVisualizer2"]='kitty cava'
LABELS["soundVisualizer2"]=""

COMMANDS["emojis"]='rofi -show emoji -modi emoji'
LABELS["emojis"]=""

COMMANDS["kaomojis"]='~/.config/rofi/splatmoji/splatmoji -j copy'
LABELS["kaomojis"]=""

COMMANDS["calculator"]='rofi -show calc -modi calc -no-show-match -no-sort -calc-command "echo -n '{result}' | xclip -selection clipboard"'
LABELS["calculator"]=""

COMMANDS["wallpapers"]='~/.config/rofi/rofiMenuWallpapers.sh'
LABELS["wallpapers"]=""

#COMMANDS["switchWM"]='~/.config/scripts/rofiMenuWM.sh'
#LABELS["switchWM"]=""

COMMANDS["fileBrowser"]='rofi -show file-browser'
LABELS["fileBrowser"]=""

COMMANDS["screenshotMenu"]='~/.config/rofi/rofiMenuScreen.sh'
LABELS["screenshotMenu"]=""

COMMANDS["voidDocs"]='void-docs'
LABELS["voidDocs"]=""
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
