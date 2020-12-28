#!/bin/bash

 declare -a array=()

 elements=(1 2 3 4 5 6 7 8 9 10)
N=$1
while true
do
array+=(${elements[@]})
  if [[ "${#array[@]}" > "$N" ]]
 then
  exit 1
  fi
done
