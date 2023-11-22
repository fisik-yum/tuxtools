#!/bin/bash

#have tcltotux in your $PATH (.bashrc)
#export PATH=$PATH:/path/to/tcltotux

for entry in `ls -d */ | sed '/\./d;s%/$%%'`; do
    ./tcltotux.tcl "$entry/course.tcl" > "$entry/course.dim"
done

