#!/bin/bash

ps -Ao pid, stime --sort=stime | tail -n 1
