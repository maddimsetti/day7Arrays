#!/bin/bash

counter=0
for (( i=1; i<=10; i++ ))
do
   randomNumber[ ((counter++)) ]=$(((RANDOM%900)+100))
done
   echo ${randomNumber[@]}
   echo ${#randomNumber[@]}

for ((i = 0; i<10; i++))
do
    for((j = 0; j<10-i-1; j++))
    do
        if [ ${randomNumber[j]} -gt ${randomNumber[$((j+1))]} ]
        then
            # swap
            temp=${randomNumber[j]}
            randomNumber[$j]=${randomNumber[$((j+1))]}
            randomNumber[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${randomNumber[*]}
echo "The second smallest element in the array: "
echo ${randomNumber[1]}
echo "The second largest element in the array: "
echo ${randomNumber[8]}


