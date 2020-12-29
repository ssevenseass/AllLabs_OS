#!/bin/bash

(
 for i in $(ls /proc | grep "[0-9]")
do
  id=$i
  ppid=$(grep "Ppid" /proc/$i/status | awk '{print $2}')
  sumExecRuntime=$(grep "sum_exec_runtime" /proc/$i?sched | awk '{print $3}')
  nrSwitches=$(grep "nr_switches" /proc/$1/sched | awk '{print $3}')
  art=$(awk "BEGIN {print $sumExecRuntime/$nrSwitches}")
 if [[ -n "$ppid" ]] && [[ -n "$art" ]]
then
echo "ProcessID = $id : Parent_ProcessID = $ppid : Average_Running_Time = $art" >> $tmp.log
 fi
done
) 1>/dev/null
  sort -nk7 tmp.log > Task4.log
rm -f tmp.log
