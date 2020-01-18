get_bonds_from_label (){
cat $1 | sed "s/show/\n/g" | sed "s/{//g" | sed "s/}//g" | awk '{print $2}' | sed 'N;s/\n/\t/g' | sed 's/^/bond /g' | sed 's/$/ K DIST/g' | head -n -1
}
