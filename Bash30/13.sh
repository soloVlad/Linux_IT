#! bin/bash

echo -n "Enter x, y of the point: "
read x y

if [ $x -eq 0 ] && [ $y -eq 0 ]
then
	echo "Point lies at the origin"
elif [ $x -eq 0 ]
then
	echo "Point lies at the Y-axis"
elif [ $y -eq 0 ]
then
	echo "Point lies at the X-axis"
elif [ $x -gt 0 ] && [ $y -gt 0 ]
then
	echo "Point lies at I quadrant"
elif [ $x -lt 0 ] && [ $y -gt 0 ]
then
	echo "Point lies at II quadrant"
elif [ $x -lt 0 ] && [ $y -lt 0 ]
then
	echo "Point lies at III quadrant"
elif [ $x -gt 0 ] && [ $y -lt 0 ]
then
	echo "Point lies at IV quadrant"
else
	echo "Incorrect input"
fi

exit 0
