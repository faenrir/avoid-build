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

COMMANDS["dasErste"]='mpv https://mcdn.daserste.de/daserste/de/master.m3u8'
LABELS["dasErste"]=""

COMMANDS["zdf"]='mpv https://zdf-hls-01.akamaized.net/hls/live/2002460/de/high/master.m3u8'
LABELS["zdf"]=""

COMMANDS["arte"]='mpv https://artelive-lh.akamaihd.net/i/artelive_de@393591/master.m3u8'
LABELS["arte"]=""

COMMANDS["ard_alpha"]='mpv http://livestreams.br.de/i/bralpha_germany@119899/master.m3u8'
LABELS["ard_alpha"]=""

COMMANDS["zdf_neo"]='mpv https://zdf-hls-02.akamaized.net/hls/live/2002461/de/high/master.m3u8'
LABELS["zdf_neo"]=""

COMMANDS["wdr"]='mpv http://wdrfsgeo-lh.akamaihd.net/i/wdrfs_geogeblockt@530016/master.m3u8'
LABELS["wdr"]=""

COMMANDS["wdrMediathek"]='chromium https://www1.wdr.de/mediathek/video/index.html'
LABELS["wdrMediathek"]=""

COMMANDS["mtv"]='mpv https://unilivemtveu-lh.akamaihd.net/i/mtvde_1@134922/master.m3u8'
LABELS["mtv"]=""

COMMANDS["bundestag"]='mpv https://c13014-l-hls.u.core.cdn.streamfarm.net/1000153copo/live/app144277506/BTTV_1/QdoHEQIoadKSHi6oKEp5ziZ2q/J7ekv9+hgpBxTSy2G2KefdbYTKWe5R2gMXKyP0.m3u8'
LABELS["bundestag"]=""

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
    print_menu | rofi -dmenu -mesg ">>> don't watch too much ╏ ” ⊚ ͟ʖ ⊚ ” ╏" -i -p "tv: "

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

