for f in m*_v?_????.png
do
    n=` echo "${f}" | sed -e s/_/\ / -e s/m// | awk '{printf("%02d",$1)}' `
    suffix=` echo "${f}" | sed s/_/\ / | cut -f2 -d\  `
    new="m${n}_${suffix}"
 echo $f $n $new
    mv "${f}" "${new}"
done
