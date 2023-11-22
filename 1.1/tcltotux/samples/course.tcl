objset :course -course_name "Bunny Hill"
objset :course:heightmap -width 92
objset :course:heightmap -length 900
objset :course:heightmap -play_width 84
objset :course:heightmap -play_length 846
objset :course:heightmap -angle 24
objset :course:heightmap -elev_scale 22
objcall :course:heightmap load_elevation elev.png

objset :course -start_pt {46 12}

tux_course_init
