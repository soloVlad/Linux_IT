#! bin/bash

echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

echo "Sum: $(($num1 + $num2))"
echo "Subtraction: $(($num1 - $num2))"
echo "Division: $(($num1 / $num2))"
echo "Multiplication: $(($num1 * $num2))"
echo "Remainder: $(($num1 % $num2))"
