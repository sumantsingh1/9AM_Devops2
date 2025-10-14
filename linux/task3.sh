#!/bin/bash

echo "--------------------------------"
echo "       SERVER DETAILS"
echo "--------------------------------"

# Server Name
echo "Name     : $(hostname)"

# Memory Information
echo "Memory   :"
free -h 
echo "--------------------------------"

# CPU Information
echo "CPU      :"
lscpu 
echo "--------------------------------"

# Disk Usage
echo "Disk     :"
df -h 
echo "--------------------------------"

