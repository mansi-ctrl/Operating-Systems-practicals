filename="sample.txt"
while [ 1 ]
do	
	echo "Enter option :
	a. Count the number of characters, words and lines
	b. File in reverse order. 
	c. Frequency of any particular word in the file
	d. Replace Lower case alphabets in place of Upper Case Alphabets
	e.Exit\n"
	read choice
	case "$choice" in
		"a" ) 
		echo "Total number of characters :$(wc -c $filename)"
		echo "Total number of lines :$(wc -l $filename)"
		echo "Total number of words : $(wc -w $filename)"
		;;
		"b" ) 
		echo  "=> File in reverse order  : $(tac $filename)" 
		;;
		"c" ) 
		echo "Enter any word which frequency you want to count :"
		read word
		echo  "=> Total Frequency of word $word  : $(grep -c $word $filename)" 
		;;
		"d" )
		echo "Actual content :$(cat $filename)"
		echo "Upper to lower conversation :$(tr '[A-Z]'  '[a-z]' < $filename)"
		;;
		"e" ) exit 1
		;;
		esac
done
