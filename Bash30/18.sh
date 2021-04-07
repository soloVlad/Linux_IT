#! bin/bash

constants=euioay

echo -n "Enter a character: "
read char

if [[ $constants =~ $char ]]
then 
	echo "It's a constant(glasnaya)"
else 
	echo "It's a vowel(soglasnaya)"
fi

exit 0


