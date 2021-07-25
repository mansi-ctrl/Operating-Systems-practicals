#last | grep "logged in" | sort -k7 
echo "Enter username :"
read name
last |head -3| grep $name
#last commands first 3 lines are contains recently logged out ,still logged in ,still running from that we can know recently logged activity


