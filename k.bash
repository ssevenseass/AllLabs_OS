#!/bin/bash

N=$1
K=$2
  for counter $(sed $K)
do
  bash newmem.bash $N&
done
