while [ 1 ]
do
	echo "Enter what you want to do :
	a. Display Current Directory
	b. List Directory
	c. Make a new Directory
	d. Change Directory
	e. Copy File
	f. Rename File
	g. Delete File
	h. Edit content of File
	i. Exit"
	read choice
	case "$choice" in 
	"a" ) echo  "=> Current Directory : \n " $(pwd)
	;;
	"b" ) echo  "=> List Directory  : \n " $(ls -l)
	;;
	"c" ) echo  "=> Make a new Directory  : \n  Enter name of dir : "
		read dirname 
		mkdir $dirname
	;;
	"d" ) echo  "=> Change Directory  : \n  Enter path of dir where you want to change from present dir : "
		read path 
		cd $path
	;;
	"e" ) echo  "=> Copy file  : \n  Enter Source file  : "
		read source 
		echo "Enter destination dir :"
		read dest
		cp $source $dest
		
	;;
	"f" ) echo  "=> Rename file  : \n  Enter old filename  : "
		read oldname 
		echo "Enter newname :"
		read newname
		mv $oldname $newname		
	;;
	"g" ) echo  "=> Delete file  : \n  Enter  filename  : "
		read oldname 
		echo  -n  "" > $oldname 
		rm $oldname 		
	;;
	"h" ) echo  "=> Edit content of file  : \n  Enter  filename  : "
		read oldname 
		vi $oldname		
	;;
	"i"  ) exit 1
	;;
	esac
done
