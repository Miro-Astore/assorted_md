mol new PSF
mol addfile DCD type dcd first FRAME last FRAME waitfor FRAME
             
set sel [atomselect top all]
$sel writepsf last.psf
$sel writepdb last.pdb
exit
