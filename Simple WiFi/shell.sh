set title "Apartment Wifi"
set xlabel "X (Densities of AP)"
set ylabel "Y (Average Number of bytes)"
set ytics "2"
plot "graph.txt" title "" with lines
pause -1 "Hit any key to continue"
