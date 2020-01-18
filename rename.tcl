mol new snapshotB.pdb

set a [atomselect top "name CA"]
set seglist [$a get segid]
set reslist [$a get resid]

set I 1
foreach segid $seglist resid $reslist {
	set sel [atomselect top "segid $segid and resid $resid"]
	$sel set resid $I
	$sel set segname B
	$sel delete
	incr I
}
set all [atomselect top "all"]
$all writepdb snapshotB-fix.pdb

exit
