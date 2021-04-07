#! bin/bash

var=$(ls)
checker=all


for file in $var
do
	if [[ -d $file ]]
	then
		echo "It's a directory"
	elif [[ -f $file ]]
	then
		echo "It's a file"
	else
		echo "It's not a file or dir"
		checker=not
	fi
done

if [ "$checker" = all ]
then
	echo "All elements are files or directories"
else
	echo "Not all elements are files or directories"
fi

exit 0
