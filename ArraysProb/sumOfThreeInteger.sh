#!/bin/bash -x

function findTriplets() {
boolean found = false

for (( i=0; i<n-2; i++ ))
do
   for (( j=$i+1; j<$n-1; j++ ))
   do
      for (( k=$j+1; k<$n; k++ ))
      do
         q=$((${array[i]}+${array[j]}+${array[k]}))
         if [ $q -eq 0 ]
         then
             echo ${array[i]}
             echo ${array[j]}
             echo ${array[k]}
             echo found = true
             exit
         fi
      done
   done
done
if [ found != false ]
then
     echo "not exist"
fi
}



echo -n "enter the elements"
read -a array
n=${#array[@]}
findTriplets boolean


