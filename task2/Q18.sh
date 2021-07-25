echo "Print sorted list of users"
cut -d: -f1 /etc/passwd | sort
echo " Count total number of users"
 cut -d: -f1 /etc/passwd | sort | wc -l
 #echo " Search for any specific user and display no. of times the user logged in"
echo "Check if any specific user is terminally active"
who
echo "List all users without password"
 sudo getent shadow | grep -Po '^[^:]*(?=:.?:)'
