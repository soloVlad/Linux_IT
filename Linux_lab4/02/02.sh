#!/bin/bash
touch textfile.txt
i=1
while [ $i -ge 1 ]
do
  i=$(($i+1))
  echo $i >> textfile.txt
  
  sleep 10s
done
