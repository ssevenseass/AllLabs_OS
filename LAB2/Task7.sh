#!/bin/bash
readBytesFunc() {
 for i in $(ls /proc | grep "[0-9]")
do
  readBytes=$(grep "read_bytes" /proc/$i/io 2>/dev/null | awk '{print $2}')
done
)
  readBytesFunc "firstBuffer.log"
sleep 60
  readBytesFunc "secondBuffer.log"
while read line
do
  currentMem=$(echo $line | awk '{print $1}')
  currentPid=$(echo $line | awk '{prin $2}')
awk -v mem=$currentMem -v pid=$currentPid '{
 if($2 == pid) {
printf "PID %d : Difference %d", $2, mem-$1
}
}' firstBuffer.log >> Task7.log
done < secondBuffer.log
sort -n -k5 Task7.log | tail -n 3
rm *Buffer.log
