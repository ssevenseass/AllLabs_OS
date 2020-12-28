#!/bin/bash

./Task4_3.bash&
pid1=$!
./Task4_3.bash&
pid2=$!
./Task4_3.bash&
pid3=$!
 renice 10 $pid1
top
  kill $pid1
  kill $pid2
  kill $pid3
exit 1
