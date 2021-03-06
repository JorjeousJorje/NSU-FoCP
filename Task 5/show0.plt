#==============================================================================
# GNUPLOT-palette (dark2)
#------------------------------------------------------------------------------
# see more at https://github.com/Gnuplotting/gnuplot-palettes
#==============================================================================
# line styles for ColorBrewer Dark2
# for use with qualitative/categorical data
# provides 8 dark colors based on Set2
# compatible with gnuplot >=4.2
# author: Anna Schneider

# line styles
set style line 1 lt 1 lc rgb '#1B9E77' # dark teal
set style line 2 lt 1 lc rgb '#D95F02' # dark orange
set style line 3 lt 1 lc rgb '#7570B3' # dark lilac
set style line 4 lt 1 lc rgb '#E7298A' # dark magenta
set style line 5 lt 1 lc rgb '#66A61E' # dark lime green
set style line 6 lt 1 lc rgb '#E6AB02' # dark banana
set style line 7 lt 1 lc rgb '#A6761D' # dark tan
set style line 8 lt 1 lc rgb '#666666' # dark gray

# palette
set palette maxcolors 8
set palette defined ( 0 '#1B9E77',\
    	    	      1 '#D95F02',\
		      2 '#7570B3',\
		      3 '#E7298A',\
		      4 '#66A61E',\
		      5 '#E6AB02',\
		      6 '#A6761D',\
		      7 '#666666' )

#==============================================================================
# TERMINAL
#==============================================================================
set termoption enhanced
set terminal GNUTERM size 800,500
set encoding utf8
#==============================================================================
# SETUP COMMANDS
#==============================================================================



set border 3 front linetype 1 linewidth 2 linecolor '#404040'
unset grid
set style fill solid noborder
set style histogram
set tics border nomirror out scale 0.5,0.25 norotate enhanced textcolor '#404040' front
set xtics border nomirror out scale 0.5,0.25 norotate enhanced textcolor '#404040'
unset x2tics
set mxtics
unset mx2tics
set ytics border nomirror out scale 0.5,0.25 norotate enhanced textcolor '#404040'
unset y2tics
set mytics
unset my2tics
unset ztics
unset mztics
unset rtics
unset mrtics
set key inside right top opaque vertical Left noinvert reverse width 0 height 1 samplen 4 spacing 1 enhanced textcolor '#404040' nobox maxrows auto maxcols auto
set boxwidth 0.9 relative
set datafile missing "?"
#==============================================================================
# CUSTOM EXPLICIT GNUPLOT COMMANDS
#==============================================================================
set style data histogram
#==============================================================================
# PLOT COMMANDS
#==============================================================================
plot \
    'plot0.dat' index 0 title 'Pn(x) - Ln(x) with n = 4' with lines linestyle 1 linewidth 2, \
    'plot0.dat' index 1 title 'Pn(x) - Ln(x) with n = 5' with lines linestyle 2 linewidth 2, \
    'plot0.dat' index 2 title 'Pn(x) - Ln(x) with n = 6' with lines linestyle 3 linewidth 2, \
    'plot0.dat' index 3 title 'Pn(x) - Ln(x) with n = 7' with lines linestyle 4 linewidth 2, \
    'plot0.dat' index 4 title 'Pn(x) - Ln(x) with n = 8' with lines linestyle 5 linewidth 2, \
    'plot0.dat' index 5 title 'Pn(x) - Ln(x) with n = 9' with lines linestyle 6 linewidth 2, \
    'plot0.dat' index 6 title 'Pn(x) - Ln(x) with n = 10' with lines linestyle 7 linewidth 2, \
    'plot0.dat' index 7 title 'Pn(x) - Ln(x) with n = 11' with lines linestyle 8 linewidth 2, \
    'plot0.dat' index 8 title 'Pn(x) - Ln(x) with n = 12' with lines linestyle 9 linewidth 2, \
    'plot0.dat' index 9 title 'Pn(x) - Ln(x) with n = 13' with lines linestyle 10 linewidth 2, \
    'plot0.dat' index 10 title 'Pn(x) - Ln(x) with n = 14' with lines linestyle 11 linewidth 2, \
    'plot0.dat' index 11 title 'Pn(x) - Ln(x) with n = 15' with lines linestyle 12 linewidth 2

