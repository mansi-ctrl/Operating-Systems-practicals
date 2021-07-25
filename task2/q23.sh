 echo "Enter directory : "
 read dirname
 if [ -d $dirname ]
 then
 cd $dirname
 echo "PID: $$"
 for name in *.txt
do
    #i=$(basename $name)  if giving file name by path and then fetch only fiename.txt
    i="${name%.*}"
    mv "$name" "$i$$.txt"
    echo "Old  File name : $name Changed file name :$i$$.txt"
done 
else 
	echo "Directory doesn't exist."
fi
