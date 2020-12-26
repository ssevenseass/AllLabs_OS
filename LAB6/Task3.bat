
net start | more > listOfS.txt

net stop DNS-client
ping -n 5 -w 1000 -l 1 127.0.0.1
net start | more > newList.txt
net start DNS-client
@echo off
fc listOfS.txt newList.txt > nul
if ERRORLEVEL 1 goto Different
echo совпадают
echo Yes > diff.txt
exit
:Different
echo не совпадают
echo No > diff.txt