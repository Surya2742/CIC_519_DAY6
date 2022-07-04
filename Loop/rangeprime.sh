#!/bin/bash

echo "Prime Number"
read -p "Enter the starting number: " P;
read -p "Enter the ending number: " Q;

for (( A=P; A<=Q; A++ ))
do
isPrime=1
for (( i=2; i<=A/2; i++ ))
do
	if [ $((A%i)) -eq 0 ]
	then
	isPrime=0
	break
	fi
done
	if [ $isPrime -eq 1 ]
	then
	echo "$A"
	fi
done
