echo "Enter first directory name"
read dirname1
echo "Enter second directory name"
read dirname2
varr1=$(find -name $dirname1)
echo "path of first directory : $varr1 "
varr2=$(find -name $dirname2)
echo "path of second directory : $varr2 "
for i in $varr1
do
mv $varr1/* $varr2/
done
