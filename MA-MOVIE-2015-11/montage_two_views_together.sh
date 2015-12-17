WIDTH=1926

for mode in `seq 18`
do
 for frame in ` seq -w 0 63 `
 do
  v1="m${mode}_v1_00${frame}.png"
  v2="m${mode}_v2_00${frame}.png"
  
  modepadded=` echo $mode | awk '{printf("%02d",$1)}' `
  out="m${modepadded}_merged_00${frame}.png"

  # +append concatenates horizontally...
  convert -resize 50% +append "${v1}" "${v2}" "${out}"
  echo "${v1}" "   " "${v2}" " ---> " "${out}"
 done
done
