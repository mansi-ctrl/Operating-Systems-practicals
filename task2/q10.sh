echo "Enter directory : "
read dirname
if [ -d $dirname ] 
then
	for i in $dirname/*.txt
	do
		for j in $dirname/*.txt
		do
			if [  $i != $j  ]
			then
				a=$(diff  $i  $j )
				if [ $? -eq 0 ]
				then
					rm $i 
					echo "Same content in $i and $j files"
					echo "Deleted  $i  file"  
					break;
				fi
			fi
		done
	done
else
	echo "Not exists"
fi


