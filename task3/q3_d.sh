while [ 1 ]
do
	echo "Enter what you want to do :
1. Floating point calculations
2. Trigonometric operations
3. Logarithms
4. Exponent
5. Exit"
	read choice
	case "$choice" in 
	"1" ) echo  "=> Floating point calculations\n " 
	echo "Enter expression 1: "
	read String1
	echo "Enter expression 2: "
	read String2
	echo "Enter operation: "
	read op
	echo "ANSWER of $String1 $op $String2 :"
	awk  "BEGIN {scale=4; print $String1 $op $String2}"
	;;
	"2" ) echo  "=> Trigonometric operations\n " 
	echo "Enter Trigonometric function (sin,cos,tan,coses,sec,cot): "
        read func
        echo "Degree: "
        read degree 
        echo "ANSWER of $func($degree):"
        if [ $func = "tan" ]
        then
        awk "BEGIN{print (sin($degree*( 3.14159265)/180)/cos($degree*( 3.14159265)/180))}"
        elif [ $func = "sec" ]
        then
        awk "BEGIN{print (1/cos($degree*( 3.14159265)/180))}"
        elif [ $func = "cosec" ]
        then
        awk "BEGIN{print (1/sin($degree*( 3.14159265)/180))}"
        elif [ $func = "cot" ]
        then
        awk "BEGIN{print (cos($degree*( 3.14159265)/180)/sin($degree*( 3.14159265)/180))}"
        else
	awk "BEGIN{print $func($degree*( 3.14159265)/180)}"
	fi
	;;
	"3" ) echo  "=> Logarithms\n "
	echo "Enter value:"
	read value
	echo "ANSWER of log($value):"
	awk "BEGIN{print log($value)}"
	;;
	"4" ) echo  "=>  Exponent\n"
	echo "Enter value:"
	read value
	echo "ANSWER of exp($value):"
	awk "BEGIN{print exp($value)}"
	;;
	"5"  ) exit 1
	;;
	esac
done
