#!/bin/bash

echo "The program is for the power of 2"
read -p "Enter the value of n: " n
Sum=1;
for (( x=1; x<=n; x++))
do
Sum=$((Sum*2));
echo "2^$x = $Sum"
done
