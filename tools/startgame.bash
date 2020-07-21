#!/bin/bash

MOD=$1
ENGINE=$2
MAP=$3

if [ "$ENGINE" = "ioquake3" ]
then
    DRI_PRIME=1 /usr/local/bin/quake3 +set fs_game $MOD +devmap $MAP +addbot orbb +addbot orbb +addbot orbb +addbot orbb
elif [ "$ENGINE" = "openarena" ]
then
    oa +set fs_game $MOD +devmap $MAP
#	DRI_PRIME=1 SDL_VIDEO_FULLSCREEN_HEAD=0 SDL_VIDEO_X11_DGAMOUSE=0 /usr/local/games/openarena/openarena.x86_64 +set fs_game $MOD +devmap $MAP
#	killall kwin_x11
#	kwin_x11 --replace &> /dev/null &
else
    echo "Engine not currently supported. Aborting."
    exit 1
fi

exit 0
