mol new 5tgk.pdb
mol new 6msm.pdb
set sel1 [atomselect 0 "name CA"]
set res [$sel1 get resid]
set sel2 [atomselect 1 "name CA and resid $res"]
set res2 [$sel2 get resid]
set sel1 [atomselect 0 "name CA and resid $res2"]
puts "[$sel1 get resname]"
puts "[$sel2 get resname]"

set M [measure fit $sel1 $sel2]
set sel [atomselect 0 "all"]

$sel move $M

