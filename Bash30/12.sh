#! bin/bash

echo -n "Enter the number: "
read num

if [ $(($num%2)) -eq 0 ]
then 
	echo "chetnoe"
else 
	echo "NEchetnoe"
fi

exit 0
