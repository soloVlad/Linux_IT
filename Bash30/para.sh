#! bin/bash

var=$(ls)
checker=all
amount_of_files=0

for file in $var
do
	if [[ -f $file ]]
	then
		amount_of_files=$(( amount_of_files + 1 ))
	fi
done

echo "Number of files: " $amount_of_files

exit 0

