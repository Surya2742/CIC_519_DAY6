#!/bin/bash
echo "Harmonic Number"
read -p "Enter the value of N to get Harmonic series: " N
Sum=0
for ((i=1; i<=N; i++))
do
A=(1/$i)
Sum=$Sum+$A
echo "scale=4;" $A| bc
done
echo "The Nth Harmonic number is: "
echo "scale=4;" $Sum | bc
