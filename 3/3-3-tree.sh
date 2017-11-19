#!/bin/bash

if [ -d $1 ]
then
  DIR=$1
else
  echo "Параметр не задан, или задан не верно!"
  exit 0
fi

for file in `find $DIR`     #find -D tree    #`find * -print0`
do
  margin=`echo $file | grep -o / | wc -l`
  i=1
  while [ "$i" -le $margin ]
  do
    echo -n "  "
    let "i+=1"  
  done
  if [ -d $file ]
  then
    echo "Directory: $file"
    #echo
  elif [ -f $file ]
  then
    lines=`wc -l $file | awk '{print $1}'`
    echo "File: $file has $lines lines."
  fi
done
