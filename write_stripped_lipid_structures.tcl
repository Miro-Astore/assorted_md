for {set j 1} {$j <= 10 } {incr j} { 
mol new $j/prot_lip.pdb waitfor all
mol addfile $j/stripped.xtc waitfor all

animate goto 0 
set A [atomselect top all]

set minus_com [vecsub {0.0 0.0 0.0} [measure center $A]]
$A moveby $minus_com 

set anchor_CAs [atomselect top "name CA" frame first]

animate goto end 
set last_frame [molinfo top get frame]

for {set i 1} {$i <= $last_frame } {incr i} {
    animate goto $i 
    set curr_CAs [atomselect top "name CA" frame $i ]
    set curr_atoms [atomselect top "all" frame $i ]
    set M [measure fit $curr_CAs $anchor_CAs]
    $curr_atoms move $M
    set write_sel [atomselect top "protein or (same residue as (x**2 + y**2 < 3200))" frame $i]
    $write_sel writepdb $j/nanodisc_stripped_$i.pdb
}

mol delete all
}
