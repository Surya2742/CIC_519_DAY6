#!/bin/bash

echo "Prime Number"
read -p "Enter the number: " P;
for (( i=2; i<=P/2; i++ ))
do
	if [ $((P%i)) -eq 0 ]
	then
	echo "The number is not prime"
	exit
	fi

done
echo "The number is Prime"
