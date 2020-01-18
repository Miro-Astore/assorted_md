#!/bin/bash
last_struct () {
    num_frames=$(( $(catdcd $2 | grep "Total frames" | awk '{print $NF}') - 1))
    cat /home/miro/md/last_frame.tcl | sed "s/DCD/$2/g" | sed "s/FRAME/$num_frames/g" | sed "s/PSF/$1/g" > /tmp/last_frame.tcl
    vmd -dispdev text -e /tmp/last_frame.tcl
}
