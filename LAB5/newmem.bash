#!/bin/bash

declare -a array=()
  elements=(1 2 3 4 5 6 7 8 9 10)
  N=$1
  a=0
while :
do
  array+=(${elements[@]})
  a="${#array[@]}"
 if [[ "$a" > "$N" ]]
then
  exit 1
 fi
done
