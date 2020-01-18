#pbc set {0.412897974253 	-0.592125952244 	0.222964152694}
pbc readxst out_eq03.xst

set all [atomselect top "all"]

set sel [atomselect top "chain X Y and name CA"]
set com [measure center $sel weight mass]

$all moveby $com

pbc wrap -compound fragment -center com -centersel "chain X Y and name CA" -all 
#pbc wrap -center origin -sel "all" -compound residue

#$all writenamdbin out_eq21-recenter.restart.coor

set sel [atomselect top "chain X Y and name CA"]
set com [measure center $sel weight mass]
puts [format "%.5f %.5f %.5f" [lindex $com 0] [lindex $com 1] [lindex $com 2]]
