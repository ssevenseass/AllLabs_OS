#!/bin/bash

ps aux | grep -E "^/sbin/" | awk '{print $2}' > Task2_2.log
