#!/bin/bash

(
result=1
command='+'
  (tail -f pipe5) | while true
do
  read line
case $line in
'+')
command='+'
  echo "Adding"
;;
"m")
command='*'
  echo "Multiplaying"
;;
"[0-9]*")
if [[ $command == '*' ]]
 then
  let result=$result\*$line
else
  let result=$result+$line
 fi
  echo "$command $line = $result"
;;
*)
  echo "error:unknowm command"
exit 1
  esac
done
