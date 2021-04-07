#! bin/bash

echo -e "Введите N: \c"
read N


for (( i=1; i<=N; i++ ))
do
	echo $((i * i))
done
