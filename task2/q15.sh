date '+DATE: %m/%d/%y TIME: %I:%M:%S %p '
ampm=$(date +"%p")
hour=$(date +"%I")
zero=0
six=6
ten=10
if [ $ampm = "AM" ] ;  then
	echo "GOOD MORNING! "
elif [ $ampm = "PM" ] ;  then
	if [  $hour -gt  $zero  ]  &&  [ $hour -lt  $six  ] ;   then
		echo "GOOD AFTERNOON! "
	elif  [  $hour -ge  $six  ]  &&  [ $hour  -lt  $ten  ]  ;  then
		echo "GOOD EVENING! "
	else
		echo "GOOD NIGHT! "
	fi
fi	
