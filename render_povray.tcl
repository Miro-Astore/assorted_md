proc  crender {{out_name} {x} {y}} {
	axes location off
	set sizes [display get size]
	set old_x [lindex $sizes 0]
	set old_y [lindex $sizes 1]
	display resize $x $y 

	render  POV3  $out_name povray +W$x +H$y -I$out_name -O$out_name.tga +D +X +FT
	set output [open "output.sh" w]
	puts $output "convert $out_name.tga $out_name.png"
	close $output
	display resize $old_x $old_y 
	save_state $out_name.vmd
}

