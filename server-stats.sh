#!/usr/bin/env bash
echo "#### MEMORY USAGE ####"
free | grep 'Mem' | awk '{printf "Free: %.2fGi  Used: %.2fGi  Usage: %.2f%%\n", $4/1048576, $3/1048576, $3/$2*100}'
echo "#### DISK USAGE ####"
df -h | grep '/$' | awk '{print "Used: " $3,"Free: " $4,"Usage: " $5}'
echo "#### TOP 5 PROCESSES BY CPU USAGE ####"
ps -eo pid,%cpu,%mem,comm --sort=-%cpu | head -n 6
echo "#### TOP 5 PROCESSES BY MEMORY USAGE ####"
ps -eo pid,%cpu,%mem,comm --sort=-%mem | head -n 6