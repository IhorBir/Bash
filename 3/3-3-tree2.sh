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
  if [ -d $file ] 
  then
    echo "Directory: $file"
    i=1
    while [ "$i" -le $margin ]
    do
      echo -n "  "
      let "i+=1"  
    done
  elif [ -f $file ]
  then
    bin=`file --mime-encoding $file | awk '{if ($2 == "binary") print "0"}'`
    if [ -e $bin ]
    then
      i=1
      while [ "$i" -le $margin ]
      do
        echo -n "  "
        let "i+=1"  
      done
      lines=`wc -l $file | awk '{print $1}'`
      echo "File: $file has $lines lines."
    fi
  fi
done
