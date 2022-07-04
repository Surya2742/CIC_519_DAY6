read -p "Enter the number : " number
function prime {
	for (( i=2; i<=number/2; i++ ))
	do
		if [ $((number%i)) -eq 0 ]
		then
		echo "The Number $number is not Prime"
		exit
		fi
	done
	echo "The number is Prime"
}
prime $number
primeNumber=$?
echo $primeNumber

function palindrom {
	while [ $number -ne 0 ]
	do
		let reminder=$number%10
		let sum=$reminder+10*$sum
		let number=$number/10

	done
	echo "$sum"
	return $sum
}

palindrom $number
pali=$?
echo $pali
prime $pali
paliprime=$?

echo $palindrom

if [ $primeNumber -eq 1 -a $paliprime -eq 1 ]
then
	echo "palindrom of $number is also prime"
	exit 0
elif [ $primeNumber == 0 -a $paliprime == 1 ]
then
	#echo "the number $pali is  prime"
        echo "palindrom of $number is  prime"
	exit 0 
elif [ $paliprime ]
then
	echo "the number $pali is not prime"
	echo "palindrom of $number is not  prime"
	exit 0
fi
