#!/bin/bash
#ps -e | less
ps -U $USER -o pid,command | sed -r 's/([0-9]+) /\1 : /' > Task1_2.log

