#! bin/bash

max=$1

for num in $@
do
	if [ $num -gt $max ]
	then
		max=$num
	fi
done

echo "Max: $max"
