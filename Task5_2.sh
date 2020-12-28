#!/bin/bash
let ppid=0 sum=0 n=0
  while read line
do
  art=$(echo $line | awk '{print $11}')
  currentPpid=$(echo $line | awk '{print $7}')
 if [[ $currentPpid == $ppid ]]
  then
  echo $line >> tmp.log
  sum=$(awk "BEGIN {print $sum+$art}")
  ((n++))
else
  asc=$(awk "BEGIN {print $sum/$n}")
  echo -n $line >> tmp.log
  echo " : Average_Sleeping_CHildren_of_ParentID = $ppid is $asc" >> tmp.log
 ppid=$currentPpid
 sum=$art
 n=1
 fi
done < Task5_2.log
mv tmp.log Task5_2.log
