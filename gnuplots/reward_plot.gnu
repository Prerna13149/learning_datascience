# wxt
set terminal wxt size 400, 300 enhanced font 'Verdana,10' persist
set terminal epslatex
set output 'check.tex'
# png
set terminal pngcairo size 500,500 enhanced font 'Verdana,10'
set output 'AreaVariationDuringTraining.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'plotting_data3.svg'

# color definitions
#set border linewidth 1.5
set style line 1 lc rgb 'red' lt 1 lw 2 pt 7 ps 1.5 # --- blue
#set style line 2 lc rgb 'green' lt 1 lw 2 pt 7 ps 1.5 # --- red
#set style line 3 lc rgb 'black' lt 1 lw 2 pt 7 ps 1.5 # --- red
#set style line 4 lc rgb 'cyan' lt 1 lw 2 pt 7 ps 1.5 #
#set arrow 10 from 0,1200 to 15,1200 nohead
#set style line 5 lc rgb 'black' lt 1 lw 2 pt 7 ps 1.5 #
set key

#set ytics 1
#set tics scale 0.75
#colnum=int(system("echo $0"))

# Change in area of blob with steps during training
{
set xlabel 'Number of steps'
set ylabel 'Area of the target blob'
set title "Change in area of blob with steps during training"
set xrange [0:25000]
set yrange [-10:10]
plot 'rewards_smooth.dat' using 1:(2*$0) with linespoints ls 1 title "Episode 1"
}
# index 0
