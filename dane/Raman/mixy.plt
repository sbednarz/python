set term pdfcairo lw 2
set output 'mixy.pdf'
set border lw 0.5
load 'parula.pal'
set xrange [300:1800]
set yrange [0:450000]

set key horizontal
set mxtics 5
set grid xtics mxtics
unset ytics
set xlabel "Raman shift, cm^{-1}"
plot\
'02_MAA.txt' u 1:($2+5*60000) t 'MAA' w l ls 11,\
'06_BA-MAA.txt' u 1:($2+4*60000) t 'BA-MAA 1:1 mol' w l ls 12,\
'12_DBU-MAA_75degC.txt' u 1:($2+3*60000) t 'DBU-MAA 1:1 mol' w l ls 13,\
'04_TEA-MAA.txt' u 1:($2+2*60000) t 'TEA-MAA 1:1 mol' w l ls 14,\
'08_TEOA-MAA_2.txt' u 1:($2+1*60000) t 'TEOA-MAA 1:1 mol' w l ls 15,\
'11_TEAMA6_75deg.txt' u 1:($2+3000) t 'QEAMA melt' w l ls 16

