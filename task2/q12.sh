echo "Enter time in seconds : "
read X
echo "How many times you want to print : "
read M
i=1
while [ "$i" -le "$M" ] ;  do 
sleep $X
echo "Hello world  $i  time"
i=$(( $i + 1 ))
done
#for i in 1 2 ;
#do 
#echo "hello world C"
#sleep $X
#done
