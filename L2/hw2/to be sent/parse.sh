cat $1 | grep -e 'http' > data
grep -o  'http.*"' data > data2
grep -o '.*" ' data2 > data3
sed -e 's/"//' data3 > $2

# rm data data2 data3