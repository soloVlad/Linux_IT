#! bin/bash

echo -n "Enter the number: "
read num

tmp=0
keep1=0
keep2=1



while [ $keep1 -lt $num ]
do
	echo -n $keep1 " "
	tmp=$keep1
	keep1=$keep2
	keep2=$(( $tmp + $keep2))
done

echo ""

exit 0
