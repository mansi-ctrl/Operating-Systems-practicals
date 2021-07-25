#####Working with CLA
for i in $@ ; do
	echo "$i" >> sample_q3_c.txt
done
awk '{ a[i++] = $0 } END { for (j=i-1; j>=0;) print a[j--] }' sample_q3_c.txt 
#BEFORE :Used to perform actions before records are processed.
#END :Used to perform actions after records are processed.
cat /dev/null > sample_q3_c.txt
