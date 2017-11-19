#!/bin/bash

FREESPACE=10

if ([ $# -eq 1 ] && (echo "$1" | grep -E -q "^?[-,0-9,+,*,/]+$") && [ $1 -le 100 -a $1 -ge 0 ])
then
  FREESPACE=$1
  echo "Freespace = $FREESPACE"
else
  echo "FREESPACE не может быть $*. Freespace равен $FREESPACE"
fi

for fsystems in `df | awk 'NR>1{print $1 "::" $5 "::" $6 }'`
do
  point=${fsystems/*\%::}
  name=${fsystems/::*}
  busy=${fsystems/\%::*}
  busy=${busy/*::}
  let space=100-$busy
  if [ $space -le $FREESPACE ]
  then
    echo "На файловой системе $name, которая смонтирована в $point, меньше $FREESPACE% свободного места!"
    i=1
  fi
done

if [ -e $i ]
then
  echo "Свободного места достаточно"
fi
