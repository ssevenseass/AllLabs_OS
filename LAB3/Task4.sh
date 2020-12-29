#!/bin/bash
./Task4_2.sh&
pid1=$!
./Task4_2.sh&
pid2=$!
./Task4_2.sh&
pid3=$!
 renice 10 $pid1
top
  kill $pid1
  kill $pid2
  kill $pid3
exit1
