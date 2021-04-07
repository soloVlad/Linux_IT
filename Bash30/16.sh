#! bin/bash

echo -n "Enter the number of the day: "
read day_id

case "$day_id" in
	"1") echo "Mondey";;
	"2") echo "Tuesday";;
	"3") echo "Wednesday";;
	"4") echo "Thursday";;
	"5") echo "Friday";;
	"6") echo "Saturday";;
	"7") echo "Sunday";;
esac

exit 0
