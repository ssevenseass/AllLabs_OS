#!/bin/bash

data=$(date +%m-%d-%Y_%H-%M-%S)
mkdir /home/user/AllLabs_OS/test && {
  echo "catalog test was created successfully" > report.txt
  touch /home/user/AllLabs_OS/test/"$data"
}
ping 'www.net_nikogo.ru' 2>> /home/user/AllLabs_OS/report.txt
