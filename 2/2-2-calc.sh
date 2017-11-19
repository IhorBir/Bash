#!/bin/bash

echo "Введите выражение:"
read calc
if ((echo "$calc" | grep -E -q "^?[-,0-9,+,*,/]+$") && (! echo "$calc" | grep -E -q "*,.* | ^[*,/]"))
then
 let result=$calc
 echo -n "$calc=$result"
 echo
else
 echo "Спробуй ще:-)"
fi
