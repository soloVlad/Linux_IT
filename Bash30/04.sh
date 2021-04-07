#! bin/bash

echo -n "Enter firsth float number: "
read fnum1

echo -n "Enter second float number: "
read fnum2

echo -n "Sum: "
echo "$fnum1+$fnum2" | bc

echo -n "Subtaction: "
echo "$fnum1-$fnum2" | bc

echo -n "Multiplication: "
echo "$fnum1*$fnum2" | bc

echo -n "Division: "
echo "scale=1;$fnum1/$fnum2" |bc

echo -n "Remainder: "
echo "$fnum1%$fnum2" | bc

exit 0
