set terminal postscript eps 26

set xlabel "Rank"
set ylabel "Size (Bytes)"
set xrange [0:100]
set output "scatterplot.eps"
plot "results6" using 6:4 title "" with points

