#!/usr/bin/tclsh
#Tux Racer uses the Tcl library by Scriptics Corporation.
#https://wiki.tcl-lang.org/page/Scriptics
#https://tcl.activestate.com/
#but I choose sto shabbily pick out coordinates

#ARGS: FILE_NAME PLAY_LENGTH
if { $argc != 2 } {
        puts "ARGS:"
        puts "FILE_NAME"
        puts "PLAY_LENGTH"
        exit
}

set target [lindex $argv 0]
set length [lindex $argv 1]

proc objcreate {args} {

    if {[lindex $args 0] ne "s_object3dinst"} {
        return
    }
    if {[lindex $args 3] eq ":objects:herring"} {
        set a [split "[lindex $args 5]"]
        puts "*\[name\]herring\[x\][expr {int(abs([lindex $a 0]))}]\[z\][expr {$::length - int(abs([lindex $a 2]))}]\[height\]1.0\[diam\]1.0" 
    }

    if {[lindex $args 3] eq ":objects:start"} {
        set a [split "[lindex $args 5]"]
        puts "*\[name\]start\[x\][expr {int(abs([lindex $a 0]))}]\[z\][expr {$::length - int(abs([lindex $a 2]))}]\[height\]6.0\[diam\]9.0" 
    }     

    if {[lindex $args 3] eq ":objects:finish"} {
        set a [split "[lindex $args 5]"]
        puts "*\[name\]finish\[x\][expr {int(abs([lindex $a 0]))}]\[z\][expr {$::length - int(abs([lindex $a 2]))}]\[height\]6.0\[diam\]9.0" 
    }
} 

source $target 
