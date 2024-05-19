#!/usr/bin/tclsh
#Tux Racer uses the Tcl library by Scriptics Corporation.
#https://wiki.tcl-lang.org/page/Scriptics
#https://tcl.activestate.com/
#but I choose sto shabbily pick out coordinates

#ARGS: FILE_NAME
if { $argc != 1 } {
        puts "objconv.tcl requires one argument specifying the location of a target file"
        exit
}

set target [lindex $argv 0]

proc objcreate {args} {
    #filter out objects that are NOT herring
    if {[lindex $args 0] ne "s_object3dinst"} {
        return
    }
    if {[lindex $args 3] ne ":objects:herring"} {
        return
    }

   set a [split "[lindex $args 5]"]

   puts "*\[name\]herring\[x\][expr {int(abs([lindex $a 0]))}]\[z\][expr {int(abs([lindex $a 2]))}]\[height\]1.0\[diam\]1.0" 
} 

source $target 
