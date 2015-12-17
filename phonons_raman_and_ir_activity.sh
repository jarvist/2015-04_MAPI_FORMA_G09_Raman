#!/usr/bin/awk -f

# Extracts Raman and IR info from a Gaussian freq job.
# Code originally by Jarvist Moore Frost circa. 2011; for work with David James on TIPS

BEGIN{j=0 
a=0
i=0
}
{
   if (($1=="Frequencies")) 
       { 
           freq[j]=$3
           j++
           freq[j]=$4
           j++
           freq[j]=$5
           j++
        }
   if (($1=="Raman"))
       {
           activ[a]=$4
           a++
           activ[a]=$5
           a++
           activ[a]=$6
           a++
        }
    if (($1=="IR" && $2=="Inten"))
        {
            ir[i]=$4
            i++
            ir[i]=$5
            i++
            ir[i]=$6
            i++
        }
}
END{
print "# freq[k], raman activ[k], ir[k]"
     for (k=0;k<=j;k++) 
         {
             print freq[k], activ[k], ir[k]
         }
}
