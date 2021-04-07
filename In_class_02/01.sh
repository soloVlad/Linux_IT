echo "Enter x:"
read x

y=0

if [ $x -lt 0 ]
then
	y=0
elif [ $x -le 10 ] && [ $x -ge 0 ]
then
	y=$(( 5 * x ))
else
	y=$x
fi

echo $y
