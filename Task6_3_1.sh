#!/bin/bash

char=1
  echo $$ > pid
num = "ok"
term() {
num="end"
}

  USER1() {
let "char+=2"
}
  USER2() {
let "char*=2"
}
  trap 'USER1' SIGUSR1
  trap 'USER2' SIGUSR2
while :
do
 if [[ "$num" == "end" ]]
then exit 1
  fi
  echo $char
sleep 1
done
