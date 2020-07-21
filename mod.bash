#!/bin/bash

MOD=opendf
MAP=$1

ENGINE=openarena

TOOLSDIR=tools

if [ "$ENGINE" = "openarena" ]
then
    GAME=openarena
    GAMEDIR=baseoa
else
    echo "Engine not currently supported. Aborting."
    exit 1
fi

$TOOLSDIR/compile.bash $ENGINE
$TOOLSDIR/mkstruct.bash $MOD $ENGINE $GAMEDIR
$TOOLSDIR/mkpk3.bash $MOD
$TOOLSDIR/copymod.bash $MOD $GAME
if [ ! -z "$MAP" ]
then
    $TOOLSDIR/startgame.bash $MOD $ENGINE $MAP
fi

exit 0
