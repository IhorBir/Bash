#!/bin/bash

echo "Введите размер зарплаты в некоторой стране:"
read salary
if (! echo "$salary" | grep -E -q "^?[0-9]+$")
then
  echo "Размер запрплаты не может быть: $salary."
elif [ $salary -ge 30000 ]
then
  echo -n "Налог с запрплаты в размере $salary равен 20% и состовляет - "
  echo `expr $salary / 5`
elif [ $salary -ge 5000 ]
then
  echo -n "Налог с запрплаты в размере $salary равен 10% и состовляет - "
  echo `expr $salary / 10`
elif [ $salary -ge 0 ]
then
  echo "Налог с запрплаты в размере $salary не взимается." 
fi

