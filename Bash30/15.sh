#! bin/bash

read -p "Введите стороны треугольника: " a b c

apb=$(( a + b ))
apc=$(( a + c ))
bpc=$(( b + c ))

if [ "$apb" -le "$c" ] || [ "$bpc" -le "$a" ] || [ "$apc" -le "$b" ]
then
	echo "Нет такого треугольника"
	exit
fi

a=$(( a*a ))
b=$(( b*b ))
c=$(( c*c ))


max=$a
tmp=0

for num in $c $b $a
do
	if [ "$num" -gt "$max" ]
	then
		max=$num
	fi
done

if [ "$b" -eq "$max" ]
then
	tmp=$a
	a=$b
	b=$tmp
elif [ "$c" -eq "$max" ]
then
	tmp=$a
	a=$c
	c=$tmp
fi

bc=$((b + c))

if [ "$a" -eq "$b" ] && [ "$b" -eq "$c" ]
then
	echo "Равносторонний"
	exit
elif [ "$a" -eq "$b" ] || [ "$a" -eq "$c" ] || [ "$b" -eq "$c" ]
then
	echo "Равнобедренный"
	exit
elif [ "$bc" -eq "$a" ]
then
	echo "Прямоугольный"
	exit
elif [[ "$bc" -lt "$a" ]]
then
	echo "Тупоугольный"
	exit
elif [[ "$bc" -gt "$a" ]]
then
	echo "Остроугольный"
	exit
fi	
