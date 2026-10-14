for i in */; 	do 
		tun=$(awk -v dir=$i 'BEGIN{FS="\t"}{if($1"/"==dir) print $4}' ../IMSLP_scores/weiss_sonatas_tunings_no_quotes.txt); 
		tun=\"$tun\";
echo "dir = " $i " tun: "$tun
		
	find $i -name *musicxml | while read j; 	do 
		filename=$(basename $j); 
		dir=$(dirname $j);
echo "filename = " $filename
# 		file=$(basename $i); 
echo "dir: " $i" "$tun
		tcout="$i${file%musicxml}tc/${filename%musicxml}tc"; 
# echo "tcout: " $tcout		
		cmd="luteconv -V -I 1 -f 1 -r 2 -T $tun  -o $tcout  $j"  ;
 		echo "$cmd";
		eval $cmd ;
	done;
	echo
done

