#!/bin/bash

./Task6_3_1.sh&
  while :
do
  read line
case $line in
"+")
  kill -SIGUSR1 $(type .pid)
;;
"m")
  kill -SIGUSR2 $(type .pid)
;;
"TERM")
  kill -SIGTERM $(type .pid)
 exit 1
;;
esac
done
