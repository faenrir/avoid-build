#!/bin/bash

TOGGLE=/tmp/.toggleTransparency$(pfw)

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    picom-trans -w $(pfw) 96
else
    rm $TOGGLE
    picom-trans -w $(pfw) 100
fi
