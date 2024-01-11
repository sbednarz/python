set term pdfcairo lw 2
set output 'mixy_C=O.pdf'
set border lw 0.5
load 'parula.pal'
set xrange [1400:1700]
#set yrange [0:180000]

set mxtics 5
set grid xtics mxtics
unset ytics
set xlabel "Raman shift, cm^{-1}"
plot\
'02_MAA.txt' u 1:($2+0*60000) t 'MAA' w l ls 11,\
'06_BA-MAA.txt' u 1:($2+0*60000) t 'BA-MAA' w l ls 12,\
'12_DBU-MAA_75degC.txt' u 1:($2+0*60000) t 'DBU-MAA' w l ls 13,\
'04_TEA-MAA.txt' u 1:($2+0*60000) t 'TEA-MAA' w l ls 14,\
'08_TEOA-MAA_2.txt' u 1:($2+0*60000) t 'TEOA-MAA' w l ls 15,\
'11_TEAMA6_75deg.txt' u 1:($2+0*3000) t 'TEAMA' w l ls 16

