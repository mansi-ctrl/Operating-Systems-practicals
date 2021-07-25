echo "Enter directory name"
read dirname
cd $dirname
find ./ -type f -size 0
find ./ -type f -size 0 -delete
echo "Size 0 files are deleted "
find ./ -type d -empty 
find ./ -type d -empty -delete
echo "Size 0 directory(s) is/are deleted "
