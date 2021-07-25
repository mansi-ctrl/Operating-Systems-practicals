echo "Enter Directory name :"
read dirname
if [ -d $dirname ]
then
	file=$(find ./$dirname -type f -exec cksum {} + | awk 'ck[$1$2]++ { print $3 } ' )
	echo "Directory exists :\n $file"
	rm $file
	echo "All duplicate file has been deleted"
else
	echo "Directory doesn't exist"
fi		

