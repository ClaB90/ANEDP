#set title 'l = 2'

set key font ",12"
set key right bottom

# Axes label
set xlabel 't'
# set ylabel 'u'
# Axes ranges
set xrange [0:0.1]
# set yrange [0.:0.5]

pl "ControlSolEsnp0.text" u ($1):($2) w l lt 1 lw 3  title '(-1/alpha)Bp_k'
repl "ControlSolEs2g0.text" u ($1):($2) w l lt 2 lw 3 title 'u_k'
repl "ControlSolEs2g0.text" u ($1):(0.2) w l title 'a'
repl "ControlSolEs2g0.text" u ($1):(0.4) w l title 'b'
repl "ControlSolEsnp0.text" u ($1):(0.25) lt 3 title 'griglia (-1/alpha)Bp_k'
repl "ControlSolEs2g0.text" u ($1):(0.25) lt 7 title 'griglia u_k'
