proc improv_save { {save_name} } { 

	save_state $save_name

	set sizes [display get size]
	set axis_state [axes location]
	set save_file [open $save_name a]
	puts $save_file "display resize $sizes"
	puts $save_file "axes location $axis_state"
	global IS_ALIGNED
	if {$IS_ALIGNED == 1} {
		puts $save_file "source /home/miro/assorted_md/align_prot.tcl"
	}
	close $save_file
}

