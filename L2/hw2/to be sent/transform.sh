rm results6 results2 results3

sort -n -k3 results.txt > results2
sed -e 's/http:\/\///' -e 's/\///' results2 > results3



count=0
total=0
while read line;
do
	# echo $line
	let "total = total + `echo $line | awk '{print $3'}`" 
	
done < results3
echo $total

#total / current value at column 3

z=0
while read line;
do
	s=`echo $line | awk '{print $3}'`

	let "z = z + s"
	cdf=`echo "scale=6; $z/$total" | bc -l`
	echo "$line $cdf $z $total $count" >> results6
	let "count = count + 1"
done < results3

gnuplot produce-cdf.gnuplot