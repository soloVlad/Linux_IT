#! bin/bash

date

if [ $? -eq 0 ]
then
	echo "Success"
else 
	echo -e "Something went wrong :(\nTry again"
fi

exit 0
