#!/bin/bash

echo "SERVER NAME:$(hostname)"
echo "MEMORY:$(free -h)"
echo "CPU DETAILS:$(lscpu)"
echo "DISK DETAILS:$(du -sh)"
