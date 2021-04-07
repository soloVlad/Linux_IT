#! bin/bash

fac() {
	n=$1
	fact=1
	while [ $n -gt 1 ]
	do
		fact=$(( $fact * $n ))
		n=$(( $n - 1 ))
	done

	echo $fact
}

echo -n "Enter the height: "
read height

term=0

result="$(fac $num)"

for(( i=0; i<$height; i++ ))
do
	for(( k=0; k<=$i; k++ ))
	do
		term=$(("$(fac $i)"/("$(fac $k)"*"$(fac $(($i-$k)))")))
		echo -n $term " "
	done
	echo ""
done

exit 0
