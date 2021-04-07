#! bin/bash

i=1
sum=0

while [[ $i -le $1 ]]
do
	sum=$(( sum+i ))
	i=$(( i+1 ))
done

echo -e "Answer: \c"
echo "scale=2;$sum/$1" | bc
