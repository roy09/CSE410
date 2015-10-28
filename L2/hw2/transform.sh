sort -n k3 results1 > results2
sed -e 's/http:\/\///' -e 's/\///' results2 > results3

rm results6

count=0
total=0
while read line;
do
	# echo $line
	let "total = total + `echo $line | awk '{print $3'}`" 
	
done < results3
echo $total

#total / current value at column 3

while read line;
do
	s=`echo $line | awk '{print $3}'`
	# echo "$s $total"
	cdf=`echo "scale=6; $s/$total" | bc -l`
	echo "$line $cdf $total" >> results6
done < results3

gnuplot produce-cdf.gnuplot