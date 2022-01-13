#!/bin/bash -x
arr[0]=$((RANDOM))
arr[1]=$((RANDOM))
num=$((${arr[0]}+${arr[1]}))
arr[2]=$((-1*$num))
echo "The three numbers are: " ${arr[@]}
for index in ${!arr[@]}
do
	a=$(($a+${arr[index]}))
done
echo "The addition of the three numbers = " $a
