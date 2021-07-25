for i in $@ ; do
	if [  -f  $i ]
		then
		echo "File exists , So making directory and moving this file to inside folder . "
		echo "Enter directory name :"
		read dir
		mkdir  $dir
		mv $i $dir
		touch $i
		echo "File is created "
	else
		echo "File doesn't exist,so creating file"
		touch $i
		echo "File is created "
	fi
done
