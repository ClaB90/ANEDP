set title 'l = 1'

# Axes label
set xlabel 't'
set ylabel 'y'
# Axes ranges
# set xrange [0:0.1]
# set yrange [-25:-1]

pl "AdjProb0.text" u ($1):($2) w l lt 1 lw 3  title 'problem'
repl "AdjVarf0.text" u ($1):($2) w l lt 2 lw 3 title 'varf'
repl "AdjProb0.text" u ($1):(-13) lt 3 title 'dt'
