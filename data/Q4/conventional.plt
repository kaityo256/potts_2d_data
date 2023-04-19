set term png
set out "conventional.png"
Tc = 1.0/log(1+2)
yt = 3.0/2.0
#yt = 1.3266357959908912
set key at 0, 4.5
set xrange [-5:10]
set xlabel sprintf("(T-Tc)L^{yt}, Tc=%.04f, yt = %.03f",Tc, yt)
set ylabel "U"
set style data linespoints
p "L064.dat" u (($1-Tc)* 64**yt):8:10 w e t "L= 64"\
, "L128.dat" u (($1-Tc)*128**yt):8:10 w e t "L=128"\
, "L256.dat" u (($1-Tc)*256**yt):8:10 w e t "L=256"\
, "L384.dat" u (($1-Tc)*384**yt):8:10 w e t "L=384"\
, "L512.dat" u (($1-Tc)*512**yt):8:10 w e t "L=512"\
, "L640.dat" u (($1-Tc)*640**yt):8:10 w e t "L=640"\
, "L768.dat" u (($1-Tc)*768**yt):8:10 w e t "L=768"\
, "L064.dat" u (($1-Tc)* 64**yt):8:10 w l lc 1 t ""\
, "L128.dat" u (($1-Tc)*128**yt):8:10 w l lc 2 t ""\
, "L256.dat" u (($1-Tc)*256**yt):8:10 w l lc 3 t ""\
, "L384.dat" u (($1-Tc)*384**yt):8:10 w l lc 4 t ""\
, "L512.dat" u (($1-Tc)*512**yt):8:10 w l lc 5 t ""\
, "L640.dat" u (($1-Tc)*640**yt):8:10 w l lc 6 t ""\
, "L768.dat" u (($1-Tc)*768**yt):8:10 w l lc 7 t ""\

