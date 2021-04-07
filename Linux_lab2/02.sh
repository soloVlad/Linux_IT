#! bin/bash

echo "Amount of args: $#"

for arg in $@
do 
	sum=$((sum + arg))
done

echo "Sum of args: $sum"
