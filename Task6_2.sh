#!/bin/bash

ps -e -o pid,vsz | grep "VmRSS" /proc/*/status | tr -d [:alnum:] | sort -nk2 | tail -n 1
 top -o RES | head -n8 | tail -n 1 | awk '{print $2"  "$7}'> Task6_2.log
