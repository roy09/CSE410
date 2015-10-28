rm results.txt
count=0
while read line;
do
	echo "$count $line `./perform-measurement.sh $line`" >> results.txt
	let "count = count + 1"

done < hw2/data4