filename="sample.txt"
echo "Actual content:\n "
cat $filename
while [ 1 ]
do
	echo "Choose option from below 
	a. Display all the words of a file in ascending order.
	b.Display a file in descending order.
	c.Display a file in reverse order.
	d.Toggle all the characters in the file.
	e.Display type of the file.
	f.Exit."
	read choice
	case "$choice" in
	"a" )
	sort $filename
	;;	
	"b" )
	sort -r $filename
	;;
	"c" )
	tac $filename
	;;
	"d" )
	tr 'a-zA-Z' 'A-Za-z' < $filename
	;;
	"e" ) 
	file $filename
	;;	
	"f" )
	exit 1
	;;
	esac
done
