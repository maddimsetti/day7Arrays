#!/bin/bash

for (( i=1; i<=100; i++ ))
do
   remainder=`echo "$i%11" | bc`
   if [ $remainder -eq 0 ]
   then
       echo $i
   fi
done
echo ${i[@]}

