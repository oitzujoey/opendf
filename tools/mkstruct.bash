#!/bin/bash

MOD=$1
ENGINE=$2
GAMEDIR=$3

if [ "$ENGINE" = "openarena" ]
then
    ENGINEDIR=gamecode
    mkdir pak
    cp -r build/release-linux-$(uname -m)/oax/vm pak
    cp README.md pak/docs
else
    echo "This engine is not currently supported. Aborting."
    exit 1
fi

exit 0
