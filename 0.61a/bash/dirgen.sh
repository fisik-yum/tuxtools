#!/bin/bash
rm courses.lst
touch courses.lst

for entry in `ls -d */ | sed '/\./d;s%/$%%'`; do
echo "*[name] "$entry" [dir] "$entry >> courses.lst
done
