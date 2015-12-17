for i
do
  awk -f phonons_raman_and_ir_activity.sh "${i}" > "${i%.*}.dat" 
  echo "Generated ${i%.*}.dat"
done
