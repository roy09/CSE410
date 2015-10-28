rm $2
count=0
while read line;
do
	echo "Currently working on "
	echo "$count $line `./perform-measurement.sh $line`" >> $2
	let "count = count + 1"

done < $1