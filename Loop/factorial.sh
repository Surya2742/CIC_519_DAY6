#!/bin/bash

F=1
echo "Factorial"
read -p "Enter the number for factorial" N
for (( i=1; i<=N; i++ ))
do
F=$((F*i))
done
echo "Factorial of $N is = " $F
