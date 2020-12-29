#!/bin/bash
  data=$(date +%m-%d-%Y)
mkdir /home/user/AllLabs_OS/LAB3/test && {
echo "catalog test was created successfully" > report.log
 touch /home/user/AllLabs_OS/LAB3/test/"$data"
}
ping 'www.net_nikogo.ru' 2>> /home/user/AllLabs_OS/LAB3/report.log
