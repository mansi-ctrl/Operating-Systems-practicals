read name
#echo $name
if [ -d $name ]
then
echo "Directory Exists "
ls -R 
#For listing directories with subdirectories
else
echo "Not exists"
fi
