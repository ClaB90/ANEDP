set title 'l = 3'

# Axes label
set xlabel 'x'
set ylabel 'y'
# Axes ranges
set xrange [0:0.5]
set yrange [0.2:0.4]

pl "ControlSol2.text" u ($1):($2) w l lt 1 lw 3  title 'uk'
repl "ControlSolEs2.text" u ($1):($2) lt 2 lw 3 title 'ues'
repl "ControlSol2.text" u ($1):(0.3) lt 3 title 'dt'
