echo "Enter Directory name :"
read dirname
if [ -d $dirname ]
then
        cd $dirname
	echo "Directory exists :\n Detailed attributes of all files th"
	ls  -lhsi ./file[1-5]*
else
	echo "Directory doesn't exist"
fi		

