#!/usr/bin/tclsh
#Tux Racer uses the Tcl library by Scriptics Corporation.
#https://wiki.tcl-lang.org/page/Scriptics
#https://tcl.activestate.com/
#but I choose sto shabbily pick out coordinates

#file width length file_width file_length
if { $argc <5 } {
        puts "objconv.tcl requires one argument specifying the location of a target file"
        exit
}

set target [lindex $argv 0]
set width [lindex $argv 1]
set length [lindex $argv 2]
set file_width [lindex $argv 3]
set file_length [lindex $argv 4]

proc objcreate {args} {
    #filter out objects thare are NOT herring
    if {[lindex $args 0] ne "s_object3dinst"} {
        return
    }
    if {[lindex $args 3] ne ":objects:herring"} {
        return
    }

    puts "[lindex $args 5]"
} 

proc transform {x z} {
    return [$file_width*$x/$width] [$file_width*$x/$width]
}

source $target 
