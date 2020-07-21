#!/bin/bash
 
MOD=$1
GAME=$2

mkdir ~/.$GAME/$MOD
mv $MOD.pk3 ~/.$GAME/$MOD
cp autoexec.cfg ~/.$GAME/$MOD
