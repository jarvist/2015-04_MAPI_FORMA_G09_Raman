%Chk=FORMA_CAM-b3lyp_AUG-cc-pVQZ.chk
%Mem=8Gb
%nproc=8
#p opt(VeryTight,CalcAll,Raman) Integral(Grid=UltraFine)  CAM-b3lyp/AUG-cc-pVQZ 

Autjob by noodles.sh | Great noodly basis sets! 8)

1 1
C 0.000000 0.427270 0.000000
H 0.000000 1.513864 0.000000
N 1.168180 -0.174990 0.000000
H 2.022103 0.371511 0.000000
H 1.273414 -1.185325 0.000000
N -1.168180 -0.174990 0.000000
H -1.273414 -1.185325 0.000000
H -2.022103 0.371511 0.000000

