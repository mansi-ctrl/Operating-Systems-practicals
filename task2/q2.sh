read name
#echo $name
if [ -f $name ]
then
echo "Exist"
rm $name
echo "File is removed"
else
echo "Not Exist"
fi
