# tcltotux
`tcltotux` is a simple utility that parses Tux Racer Course files in TCL to Extreme Tux Racer Course Files. It automatically searches for `course.tcl` in the current directory and converts it to `course.dim`. The resulting file can be edited in a text editor for fine-tuning of your course.

## How it works
The program uses specific hardcoded keys to recognize data as it buffers through `course.tcl`, line by line. It is not a complete "parser" and is very primitive. As the program buffers through the file it recognizes and splits data into different fields. Finally it formats the data into Extreme Tux Racer - readable form and saves it to a file.

*This Program is Licensed Under the GPL, version 3*

