%Chk=MA_b3lyp_AUG-cc-pVQZ.chk
%Mem=8Gb
%nproc=8
#p opt(VeryTight,CalcAll,Raman) Integral(Grid=UltraFine)  b3lyp/AUG-cc-pVQZ 

Autjob by noodles.sh | Great noodly basis sets! 8)

1 1
C 0.000000 0.000000 -0.804455
H -0.095874 -1.030964 -1.144495
H -0.844904 0.598511 -1.144495
H 0.940777 0.432453 -1.144495
N 0.000000 0.000000 0.712562
H 0.088649 0.951929 1.090759
H -0.868719 -0.399192 1.090759
H 0.780070 -0.552736 1.090759

