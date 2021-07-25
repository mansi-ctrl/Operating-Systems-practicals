echo "Enter Directory name :"
read dirname
if [ -d $dirname ]
then
	echo "Directory exists :"
	echo "name  size  date  protection  owner   "	
	ls -ohs $dirname | awk '{print $9,$1,$6,$7,$2,$4}' 
	total=$(ls $dirname |wc -l)
	echo "Total number of file(s) :$total"
	echo "$(du -sh  $dirname ) occupied size"
else
	echo "Directory doesn't exist"
fi		
