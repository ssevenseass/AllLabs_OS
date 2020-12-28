#!/bin/bash

 while true
do
  read line
if [[ "$line" = 0 ]]
then
  echo "error"
fi
  if [[ "$line" == "quit" ]]
 then
  exit 0
  fi
if [[ "$line" != "+" ]]
  then exit 1
fi
  if [[ "$line" != "m" ]]
 then
  exit 1
  fi
  if [[ ! "line" =~ [[:alnum:]] ]]
 then
exit 1
fi
done
