echo "Enter first directory name "
read dirname1
echo "Enter second directory name "
read dirname2

if   ( [ -d   $dirname1  ] ||  [ -d $dirname2  ]  );
	then 
	echo "Enter directory name where you want to store copied file :"
	read dir_destination
	while  [ -d  $dir_destination  ] 
	do 
		echo "Dirctory exists .so,Enter another name  :"
		read  dir_destination
	done	
	mkdir $dir_destination	
	ls $dirname1 > "dirname1.txt"
	ls $dirname2 > "dirname2.txt"
	#count_files = 0
	for  i in `comm -12 dirname1.txt dirname2.txt `
	do
		onefile=$(ls $dirname1/$i | tr -s " " | cut -d " " -f8)
		a=$(diff $dirname1/$i  $dirname2/$i)
		if [ $? -eq 0 ]
			then
			cp $onefile $dir_destination
			echo "copied  $i  file" 
		fi
	done
else
	echo "not exists "
fi

