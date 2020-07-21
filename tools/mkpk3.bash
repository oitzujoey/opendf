#!/bin/bash

MOD=$1

cd "pak"

zip -r "${MOD}.zip" "."
mv "${MOD}.zip" "../${MOD}.pk3"

cd ..
