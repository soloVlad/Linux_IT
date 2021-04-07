#! bin/bash

echo -n "Enter n:"
read n

sum=0

for(( i=1; i<=$n; i++)) {
	let sum+=$i
}

echo -n "Average: "
echo "scale=2;$sum / $n" | bc


exit 0
