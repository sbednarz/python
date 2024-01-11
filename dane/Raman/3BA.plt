set term pdfcairo lw 2
set output '3BA.pdf'
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
'05_BA.txt' u 1:($2+1*60000) t 'BA' w l ls 17,\
'06_BA-MAA.txt' u 1:($2+3000) t 'BA-MAA' w l ls 14
