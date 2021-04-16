#!/bin/bash -x

counter=0
for (( i=1; i<=10; i++ ))
do
   number[ ((counter++)) ]=$(((RANDOM%900)+100))
done
echo "${number[@]}"

max=${number[0]}
secondMax='unset'

for (( i=2; i<=10; i++ ))
do
   if [[ $max < ${number[i]} ]]
   then
       secondMax=$max
       max=${number[i]}
   elif [[ ${number[i]} -ne $max ]] && { [[ "$secondMax" = "unset" ]] || [[ ${n>
   then
       secondmax=${number[i]}
   fi
done

echo "secondMax= $secondMax"

echo "${number[@]}"

min=${number[0]}
secondMin='unset'

for (( i=1; i<=10; i++ ))
do
   if [[ $min > ${number[i]} ]]
   then
       secondMin=$min
       min=${number[i]}
   elif [[ ${number[i]} -ne $min ]]  && { [[ "$secondMin" = "unset" ]] || [[ ${>
   then
       secondMin=${number[i]}
   fi
done

echo "secondMin= $secondMin"
