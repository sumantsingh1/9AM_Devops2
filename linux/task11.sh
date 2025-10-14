#!/bin/bash

echo "-------------------------------------------"
echo "     TOP PROCESSES BY CPU UTILIZATION"
echo "-------------------------------------------"
echo ""

# Display top 10 processes sorted by CPU usage
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 11

echo ""
echo "-------------------------------------------"

