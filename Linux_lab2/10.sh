#! bin/bash

read -p "Введите число: " number

sum=0

while [[ $number -gt 0 ]]
do
	sum=$(( sum+$(( number%10 ))))
	number=$(( number / 10 ))
done

echo "Answer: $sum"
