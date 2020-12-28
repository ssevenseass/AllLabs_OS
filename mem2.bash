#!/bin/bash

 truncate -s 0 report2.log
 declare -a array=()
counter=0
 elements=(1 2 3 4 5 6 7 8 9 10)
a=0
while true
do
 let counter+=1
array+=(${elements[@]})
  if [[ $counter == 100000 ]]
 then
  counter=0
 a="${#array[@]}"
echo "${#array[@]}" >> report2.log
  fi
done
