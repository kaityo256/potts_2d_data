set term png
set out "low.png"
Tc = 1.0/log(1+sqrt(3))
yt = 6.0/5.0
set key at -0, 0.8
set xrange [-5:10]
set xlabel sprintf("(T-Tc)L^{yt}, Tc=%.04f, yt = %.03f",Tc, yt)
set ylabel "U_{low}"
p "L032.dat" u (($1-Tc)* 32**yt):2:4 w e t "L= 32"\
, "L064.dat" u (($1-Tc)* 64**yt):2:4 w e t "L= 64"\
, "L128.dat" u (($1-Tc)*128**yt):2:4 w e t "L=128"\
, "L256.dat" u (($1-Tc)*256**yt):2:4 w e t "L=256"\
, "L384.dat" u (($1-Tc)*384**yt):2:4 w e t "L=256"\
, "L512.dat" u (($1-Tc)*512**yt):2:4 w e t "L=512"\
, "L768.dat" u (($1-Tc)*768**yt):2:4 w e t "L=768"\
, "L896.dat" u (($1-Tc)*896**yt):2:4 w e t "L=896"\
, "L032.dat" u (($1-Tc)* 32**yt):2 w l t ""\
, "L064.dat" u (($1-Tc)* 64**yt):2 w l t ""\
, "L128.dat" u (($1-Tc)*128**yt):2 w l t ""\
, "L256.dat" u (($1-Tc)*256**yt):2 w l t ""\
, "L384.dat" u (($1-Tc)*384**yt):2 w l t ""\
, "L512.dat" u (($1-Tc)*512**yt):2 w l t ""\
, "L768.dat" u (($1-Tc)*768**yt):2 w l t ""\
, "L896.dat" u (($1-Tc)*896**yt):2 w l t ""

