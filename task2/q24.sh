#!/bin/bash
filename="sample_24.txt" 
while [ 1 ] 
do 
	echo "Enter your choice :
	1)To add imployee in file
	2)To get information about any employee. (Enter first name through the keyboard)
	3)To get information about any employee. (Enter last name through the keyboard)
	4)To display all employees whose basic pay is between 4000 to 7000
	5)Exit"
	read choice
	case "$choice" in
		"1")
		echo "Enter name :"
		read name
		#name=${name , ,}
		#name=${name ^}
		#echo "Hello ,${name^}."
		echo "Enter surname: "
		read surname
		echo "Enter Joing year:"
		read year
		echo "Enter Address (xx abcRd,city):"
		read add
		echo "Enter Salary:"
		read salary
		echo "$name | $surname | $year | $add | $salary  " >> $filename
		;;
		"2")
		echo "Enter name"
		read name
		#awk "/$name/" $filename   if delimeter by space
		grep "$name" $filename
		;;
		"3")
		echo "Enter surname"
		read usersurname
		grep  "$usersurname" $filename
		#awk  "/$usersurname/ "  $filename  if delimeter by space
		;;
		"4")
		echo "All employees whose basic pay is between 4000 to 7000"
		awk   -F "|" ' {  if  ( 4000 <= $5   &&  $5  <= 7000 )  print } '  $filename 
		;;
		"5")
		
		exit 1
		;;
	esac
done

