proc  srender {{out_name} {x} {y}} {
	display resize $x $y 
	set sizes [display get size]
	set old_x [lindex $sizes 0]
	set old_y [lindex $sizes 1]
	mol showrep top 0 off
	mol showrep top 0 on
	axes location off
	display update


#	render  snapshot  $out_name.tga display $out_name.tga
	#sleep 10 
	render  Tachyon  $out_name "/usr/local/lib/vmd/tachyon_LINUXAMD64 -trans_vmd -aasamples 12 %s -format Targa -res $x $y -o %s.tga; convert %s.tga %s.png"
	display resize $old_x $old_y 
	save_state $out_name.vmd
}

