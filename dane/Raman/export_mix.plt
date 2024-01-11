set term pngcairo font ",11" lw 2
set out 'export_mix.png'
set border lw 0.5
load 'parula.pal'
set multiplot
set size 1,1
set origin 0,0
set yrange [-0.1:2.0]
set ytics 0.5
#set key vertical maxrows 4
set xlabel 'Raman shift, cm^{-1}'
set ylabel 'Normalized intensity'
plot\
'export_mix.dat' u 1:2 i 0 w l t 'MAA bulk' ls 10,\
'export_mix.dat' u 1:2 i 1 w l t 'MAA-TEA 1:1 mol' ls 11,\
'export_mix.dat' u 1:2 i 2 w l t 'MAA-BA 1:1 mol' ls 12,\
'export_mix.dat' u 1:2 i 4 w l t 'MAA-DBU 1:1 mol' ls 13,\
'export_mix.dat' u 1:2 i 3 w l t 'QEAMA (melt)' ls 14

unset key
set xrange [1620:1660]
set yrange [0:4]
unset ytics
#set size 0.3,0.35
#set origin 0.15,0.6
set size 0.27,0.50
set origin 0.68,0.25
unset xlabel
unset ylabel
set xtics ("1630" 1630, "1650" 1650)
set arrow from 1642,0 to 1642,4 nohead lw 0.5 dt 3
plot\
'export_mix.dat' u 1:($2+2.0) i 0 w l t 'MAA bulk' ls 10,\
'export_mix.dat' u 1:($2+1.5) i 1 w l t 'MAA-TEA 1:1 mol' ls 11,\
'export_mix.dat' u 1:($2+1.0) i 2 w l t 'MAA-BA 1:1 mol' ls 12,\
'export_mix.dat' u 1:($2+0.5) i 4 w l t 'MAA-DBU 1:1 mol' ls 13,\
'export_mix.dat' u 1:($2+0.0) i 3 w l t 'QEAMA (melt)' ls 14

