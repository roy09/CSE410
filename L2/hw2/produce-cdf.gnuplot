set terminal postscript eps 26

set xlabel "Maximum file size (KB)"
set ylabel "Cumulative fraction of all files (%)"
set output "cdf.eps"
plot "results6" using 4:5 title "" with lines
