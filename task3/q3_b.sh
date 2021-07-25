#####Working with CLA
for i in $@ ; do
	echo "$i" >> sample_q3_b.txt
done
awk 'BEGIN{i=1} /.*/{printf "%d.% s\n",i,$0; i++}' sample_q3_b.txt 
cat /dev/null > sample_q3_b.txt

#awk 'BEGIN{i=1} {printf "	%d % s\n",i,$0; i++}'  #print at a time


