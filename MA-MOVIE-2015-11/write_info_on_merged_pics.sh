# For consistency, all data from MA_PBEPBE_AUG-cc-pVQZ.dat
# As used in PRB + etc., as consistentcy

# Starter constructed with:
# cat MA_PBEPBE_AUG-cc-pVQZ.dat | awk '{printf("TEXT[%d]=\"Mode %d: %.1f cm \"\n",NR-1,NR+17,$1)}'
# Unicode superscripts + symmetry added by hand
TEXT[1]="Mode: 19  Symm: A  Freq: 282.4 cm⁻¹ "
TEXT[2]="Mode: 20  Symm: E  Freq: 886.5 cm⁻¹ "
TEXT[3]="Mode: 21  Symm: E  Freq: 886.5 cm⁻¹ "
TEXT[4]="Mode: 22  Symm: A  Freq: 922.6 cm⁻¹ "
TEXT[5]="Mode: 23  Symm: E  Freq: 1239.3 cm⁻¹ "
TEXT[6]="Mode: 24  Symm: E  Freq: 1239.3 cm⁻¹ "
TEXT[7]="Mode: 25  Symm: A  Freq: 1418.4 cm⁻¹ "
TEXT[8]="Mode: 26  Symm: E  Freq: 1450.6 cm⁻¹ "
TEXT[9]="Mode: 27  Symm: E  Freq: 1450.6 cm⁻¹ "
TEXT[10]="Mode: 28  Symm: A  Freq: 1478.5 cm⁻¹ "
TEXT[11]="Mode: 29  Symm: E  Freq: 1621.6 cm⁻¹ "
TEXT[12]="Mode: 30  Symm: E  Freq: 1621.6 cm⁻¹ "
TEXT[13]="Mode: 31  Symm: A  Freq: 3017.8 cm⁻¹ "
TEXT[14]="Mode: 32  Symm: E  Freq: 3119.0 cm⁻¹ "
TEXT[15]="Mode: 33  Symm: E  Freq: 3119.0 cm⁻¹ "
TEXT[16]="Mode: 34  Symm: A  Freq: 3321.5 cm⁻¹ "
TEXT[17]="Mode: 35  Symm: E  Freq: 3395.5 cm⁻¹ "
TEXT[18]="Mode: 36  Symm: E  Freq: 3395.5 cm⁻¹ "

for f in m*_merged_*.png
do
    n=` echo "${f}" | sed -e s/_/\ / -e s/m// | awk '{printf("%02d",$1)}' `
    sn=` echo $n | awk '{printf("%d",$1)}' ` # convert 01 --> 1 for stupid BASH arrays failing with n>08
    suffix=` echo "${f}" | sed s/_/\ / | cut -f2 -d\  `
    new="annotated_m${n}_${suffix}"
    echo $f $n $new
# annotate with slight bubble-white writing, to ensure contrast
    convert "${f}" -gravity south \
      -font helvetica -pointsize 72 \
      -stroke '#FFFC' -strokewidth 4 -annotate 0 "${TEXT[sn]}" \
      -stroke  none   -fill black    -annotate 0 "${TEXT[sn]}" \
      ${new} 
done
