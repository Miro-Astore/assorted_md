#!/bin/bash
find_center () {
	x=$(vmd -dispdev text -e /home/miro/md/find_cent.tcl 2> /dev/null | grep -E  ^-\|^[0-9] | tail -n 1)
	y=$(echo $x  | sed "s/ /, /g" )
	echo "dummyAtom ($y)" 
}
