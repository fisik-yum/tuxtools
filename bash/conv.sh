#!/bin/bash
for entry in `ls -d */ | sed '/\./d;s%/$%%'`; do
    echo $entry
    convert $entry/elev.rgb $entry/elev.png
    convert $entry/preview.rgb $entry/preview.png
    convert $entry/terrain.rgb $entry/terrain.png
    convert $entry/trees.rgb $entry/trees.png

done