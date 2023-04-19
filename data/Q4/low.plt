set term png
set out "low.png"
Tc = 1.0/log(1+2)
yt = 3.0/2.0
set key at -2, 0.9
set xrange [-10:20]
set xlabel "(T-Tc)L^{y_t}"
set ylabel "U_{low}"
p "L064.dat" u (($1-Tc)* 64**yt):2:4 w e t "L= 64"\
, "L128.dat" u (($1-Tc)*128**yt):2:4 w e t "L=128"\
, "L256.dat" u (($1-Tc)*256**yt):2:4 w e t "L=256"\
, "L384.dat" u (($1-Tc)*384**yt):2:4 w e t "L=384"\
, "L512.dat" u (($1-Tc)*512**yt):2:4 w e t "L=512"\
#, "L640.dat" u (($1-Tc)*640**yt):2:4 w e t "L=640"\
#, "L768.dat" u (($1-Tc)*768**yt):2:4 w e t "L=768"\
