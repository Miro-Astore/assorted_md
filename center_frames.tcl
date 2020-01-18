set numframes [molinfo top get numframes]
for {set i 0} {$i < $numframes} { incr i } {

	animate goto $i
	set sel [atomselect top all]
	set sel [atomselect top all]
	set gec [measure center $sel]
	$sel moveby [vecscale -1.0 $gec]
}

