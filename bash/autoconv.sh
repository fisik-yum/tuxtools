#!/bin/bash

#have tcltotux in your $PATH (.bashrc)
#export PATH=$PATH:/path/to/tcltotux

for entry in `ls -d */ | sed '/\./d;s%/$%%'`; do
    cd $entry
    tcltotux
    cd ..
done

