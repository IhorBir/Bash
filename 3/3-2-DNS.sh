#!/bin/bash

FILE="/etc/resolv.conf"

if [ ! -e "$FILE" ]
then
  echo "Файл $FILE не найден."; echo
else
  echo -n "Количество DNS серверов: "; grep -c ^nameserver "$FILE"
fi
