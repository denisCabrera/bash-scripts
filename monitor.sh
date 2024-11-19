#!/bin/bash
# Monitors system resources.

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

echo "Memory Usage:"
free -h | awk '/^Mem/ {print $3 "/" $2}'

echo "Disk Usage:"
df -h | awk '$NF=="/" {print $3 "/" $2}'

echo "Network Usage:"
ifstat -t 1 1 | tail -n 1
