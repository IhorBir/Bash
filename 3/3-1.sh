#!/bin/bash

echo "Цыкл FOR"
for a in $@
do
  let "i+=1"
  echo "Параметр $i - $a"
done
echo

echo "Цыкл WHILE"
i=1
while [ "$i" -le $# ]
do
  echo "Параметр $i - ${@:$i:1}"
  let "i+=1"  
done
echo 

echo "Цыкл UNTIL"
i=0
until [ "$i" -eq $# ] 
do
 let "i+=1"
 echo "Параметр $i - ${@:$i:1}" 
done




