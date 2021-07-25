echo "Enter first directory name"
read dirname1
echo "Enter Second directory name "
read dirname2
varr1=$(find -name $dirname1)
echo "First directory path : $varr1"
varr2=$(find -name $dirname2)
echo "Second directory path : $varr2"
echo "Enter new directory name "
read newdir
cd $varr1
cd ..
mkdir $newdir
cd $newdir
varr3=$(pwd)
cd ~
for i in $varr1
do
cp $varr1/* $varr3/
done
for j in $varr2
do 
cp $varr2/* $varr3/
done
