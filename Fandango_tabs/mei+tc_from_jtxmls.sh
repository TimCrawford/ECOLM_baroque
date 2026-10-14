# Source - https://superuser.com/a/442699
# Posted by Dennis
# Retrieved 2026-09-06, License - CC BY-SA 3.0
for DIR in *; do [ -d "$DIR" ] &&  for j in "$DIR"/*.jtxml; do
			echo Processing $j
			path=$j
			filename=$(basename $j)
			name=${filename%.jtxml}
			luteconv -s jtxml -d tc -bm -r 2 -o $DIR/tc/$name.tc $j
			luteconv -s jtxml -d mei -bm -r 2 -o $DIR/mei/$name.mei $j
		done 
done


# dirname=$1
# for j in $dirname/*.jxtml; do
# 	echo $j
# 	filename=$(basename $j)
# 	name=${filename%.jtxml}
# 	echo Encoding $name in $dirname
# 	# luteconv -s jtxml -d tc -bm -r 2 -o $dirname/tc/$name.tc $dirname/$name.jtxml
# 	# luteconv -s jtxml -d mei -bm -r 2 -o $dirname/mei/$name.mei $dirname/$name.jtxml
# done