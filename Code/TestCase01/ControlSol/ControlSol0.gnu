#set title 'l = 1'

set key font ",12"

# Axes label
set xlabel 't'
set ylabel 'u'
# Axes ranges
set xrange [0:0.1]
set yrange [-25:-1]

pl "ControlSol0.text" u ($1):($2) w l lt 1 lw 3  title 'uk'
repl "ControlSolEs0.text" u ($1):($2) w l lt 2 lw 3 title 'ues'
repl "ControlSol0.text" u ($1):(-13) lt 3 title 'dt'
