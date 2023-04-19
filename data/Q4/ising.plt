set term png
set out "ising.png"
Tc = 1.0/log(1+2)
#yt = 3.0/2.0
yt = 1.4403919908609781
set key at 0, 2.2
set xrange [-5:10]
set xlabel sprintf("(T-Tc)L^{yt}, Tc=%.04f, yt = %.03f",Tc, yt)
set ylabel "U_{ising}"
p "L064.dat" u (($1-Tc)* 64**yt):11:13 w e t "L= 64"\
, "L128.dat" u (($1-Tc)*128**yt):11:13 w e t "L=128"\
, "L256.dat" u (($1-Tc)*256**yt):11:13 w e t "L=256"\
#, "L384.dat" u (($1-Tc)*384**yt):11:13 w e t "L=384"\
#, "L512.dat" u (($1-Tc)*512**yt):11:13 w e t "L=512"\
#, "L640.dat" u (($1-Tc)*640**yt):11:13 w e t "L=640"\
#, "L768.dat" u (($1-Tc)*768**yt):11:13 w e t "L=768"\
