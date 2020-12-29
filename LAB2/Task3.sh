#!/bin/bash
ps -o pid,stime --sort=stime | tail -n 1 > Task3.log
