#!/bin/bash

echo "Factorization"
read -p "Enter the number to get Factors: " F
echo "1"
for (( i=2; i<=F; i++ ))
do
	if [ $((F%i)) -eq 0 ]
	then
	echo "$i"
		for (( a=2; a<i; a++ ))
		do
		isPrime=1
			if [ $((i%a)) -eq 0 ]
			then
			isPrime=0
			break
			fi
		done
			if [ $((isPrime)) -eq 1 ]
			then
			echo "Prime number is " $i
			fi
	fi
done
