#! bin/bash

get_digits_sum() {
if [ $1 -le 9 ]
then
	echo $1
else
	keep1=$(get_digits_sum $(( $1 % 10 )) )
	keep2=$(get_digits_sum $(( $1 / 10 )) )
	
	echo $(( $keep1 + $keep2 ))
fi
}

echo -n "Enter a number: "
read n

get_digits_sum $n

exit 0
