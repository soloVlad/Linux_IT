#! bin/bash

echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

echo "Choose operaion(+,-,*,/):"
read operation

case "$operation" in
	"+") echo $(( $num1+$num2 ));;
	"-") echo $(( $num1-$num2 ));;
	"*") echo $(( $num1*$num2 ));;
	"/") echo $(( $num1/$num2 ));;
esac

exit 0
