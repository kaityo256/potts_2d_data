set term png
set out "cross.png"
Tc = 1.0/log(1+2)
#yt = 3.0/2.0
yt = 1.3507762622255619
set key at 0, 0.6
set xrange [-5:10]
set xlabel sprintf("(T-Tc)L^{yt}, Tc=%.04f, yt = %.03f",Tc, yt)
set ylabel "U_{cross}"
p "L064.dat" u (($1-Tc)* 64**yt):14:16 w e t "L= 64"\
, "L128.dat" u (($1-Tc)*128**yt):14:16 w e t "L=128"\
, "L256.dat" u (($1-Tc)*256**yt):14:16 w e t "L=256"\
#, "L384.dat" u (($1-Tc)*384**yt):14:16 w e t "L=384"\
#, "L512.dat" u (($1-Tc)*512**yt):14:16 w e t "L=512"\
#, "L640.dat" u (($1-Tc)*640**yt):14:16 w e t "L=640"\
#, "L768.dat" u (($1-Tc)*768**yt):14:16 w e t "L=768"\
