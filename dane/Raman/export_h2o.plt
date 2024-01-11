set term pngcairo font ",11" lw 2
set out 'export_h2o.png'
set border lw 0.5
load 'parula.pal'
set yrange [-0.1:1.5]
set ytics 0.5
set key vertical maxrows 4
set xlabel 'Raman shift, cm^{-1}'
set ylabel 'Normalized intensity'
plot\
'export_h2o.dat' u 1:2 i 0 w l t 'MAA bulk' ls 10,\
'export_h2o.dat' u 1:2 i 2 w l t 'MAA-H2O 1:1 mol (83 wt.% MAA)' ls 11,\
'export_h2o.dat' u 1:2 i 3 w l t 'MAA-H2O 1:2 mol (70 wt.% MAA)' ls 12,\
'export_h2o.dat' u 1:2 i 1 w l t 'MAA-H2O 30 wt.% MAA' ls 13

