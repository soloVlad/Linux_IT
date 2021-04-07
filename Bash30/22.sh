#! bin/bash

echo -n "Enter a string: "
read str

len=${#str}
sum=0

array=( $(echo $str | grep -o . ) )

for(( i=0; i<len; i++ ))
do
	let sum+=${array[$i]}
done

echo $sum

exit 0
