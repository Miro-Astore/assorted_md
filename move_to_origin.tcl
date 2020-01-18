set sel [atomselect top all]
set gec [measure center $sel]
$sel moveby [vecscale -1.0 $gec]

