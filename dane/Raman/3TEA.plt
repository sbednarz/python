set term pdfcairo lw 2
set output '3TEA.pdf'
set border lw 0.5
load 'parula.pal'
set xrange [250:2400]
set yrange [0:180000]

set mxtics 5
set grid xtics mxtics
unset ytics
set xlabel "Raman shift, cm^{-1}"
plot\
'02_MAA.txt' u 1:($2+2*60000) t 'MAA' w l ls 11,\
'03_TEA.txt' u 1:($2+1*60000) t 'TEA' w l ls 17,\
'04_TEA-MAA.txt' u 1:($2+3000) t 'TEA-MAA' w l ls 14
