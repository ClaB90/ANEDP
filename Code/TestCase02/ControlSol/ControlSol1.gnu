#set title 'l = 2'

set key font ",12"

# Axes label
set xlabel 't'
set ylabel 'u'
# Axes ranges
set xrange [0:0.5]
set yrange [0.2:0.4]

pl "ControlSol1.text" u ($1):($2) w l lt 1 lw 3  title 'uk'
repl "ControlSolEs1.text" u ($1):($2) lt 2 lw 3 title 'ues'
repl "ControlSol1.text" u ($1):(0.3) lt 3 title 'dt'
