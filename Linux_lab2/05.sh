#! bin/bash

name=Vlad

echo -e "Enter user name: \c"
read new_name

if [ $new_name == $name ]
then
	echo "Yes"
else
	echo "No"
fi

