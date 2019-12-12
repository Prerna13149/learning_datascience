#!/usr/bin/gnuplot
#
# Plotting the data of file plotting_data1.dat
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
set terminal wxt size 400, 300 enhanced font 'Verdana,15' persist
set terminal epslatex
set output 'check.tex'

# color definitions
#set border linewidth 1.5
set style line 1 lc rgb 'red' lt 1 lw 2 pt 7 ps 1.5 # --- blue
set style line 2 lc rgb 'green' lt 1 lw 2 pt 7 ps 1.5 # --- red
set style line 3 lc rgb 'black' lt 1 lw 2 pt 7 ps 1.5 # --- red
set style line 4 lc rgb 'cyan' lt 1 lw 2 pt 7 ps 1.5 #
set arrow 10 from 0,1200 to 15,1200 nohead
#set style line 5 lc rgb 'black' lt 1 lw 2 pt 7 ps 1.5 #
set key

#set ytics 1
#set tics scale 0.75


# Change in area of blob with steps during training

set xlabel 'Number of steps'
set ylabel 'Area of the target blob'
set title "Change in area of blob with steps during training"
set xrange [0:15]
set yrange [0:2000]
plot 'success.dat' index 0 with linespoints ls 1 title "DDPG", \
     ''                   index 1 with linespoints ls 2 title "min-heap DDPG", \
    ''					  index 2 with linespoints ls 3 title "weighted DDPG"
#     ''					  index 3 with linespoints ls 4 title "Episode 4", \


#{ Change in area of blob with steps after training

#set xlabel 'Number of steps'
#set ylabel 'Area of the target blob'
#set title "Change in area of blob with steps"
#set xrange [0:15]
#set yrange [0:2000]
#plot 'plotting_data1.dat' index 0 with linespoints ls 1 title "Episode 1", \
#     ''                   index 1 with linespoints ls 2 title "Episode 2", \
#     ''					  index 2 with linespoints ls 3 title "Episode 3", \
#     ''					  index 3 with linespoints ls 4 title "Episode 4", \

#Change in distance from target with steps during training
#set xlabel 'Number of steps'
#set ylabel 'Distance between centroids'
#set title "Change in distance from target with steps during training"
#set xrange [0:15]
#set yrange [0:2000]
#plot 'plotting_data4.dat' index 0 with linespoints ls 1 title "Episode 1", \
#     ''                   index 1 with linespoints ls 2 title "Episode 2", \
#     ''					  index 2 with linespoints ls 3 title "Episode 3", \
#     ''					  index 3 with linespoints ls 4 title "Episode 4", \


#Change in distance from target with steps

#set xlabel 'Number of steps'
#set ylabel 'Distance between centroids'
#set title "Change in distance from target with steps"
#set xrange [0:15]
#set yrange [0:2000]
#plot 'plotting_data4.dat' index 0 with linespoints ls 1 title "Episode 1", \
#     ''                   index 1 with linespoints ls 2 title "Episode 2", \
#     ''					  index 2 with linespoints ls 3 title "Episode 3", \
#     ''					  index 3 with linespoints ls 4 title "Episode 4", \


#Image Error Graph

#set xlabel 'Number of steps'
#set ylabel 'Error in area of the target object'
#set title "Feature Error with steps"
#set xrange [0:15]
#set yrange [0:2000]
#plot 'plotting_data3.dat' index 0 with linespoints ls 1 title "Episode 1", \
#     ''                   index 1 with linespoints ls 2 title "Episode 2", \
#     ''					  index 2 with linespoints ls 3 title "Episode 3", \
#     ''					  index 3 with linespoints ls 4 title "Episode 4", \



