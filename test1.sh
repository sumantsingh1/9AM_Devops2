#!/bin/bash

echo "my hostName is: $(hostname) "
echo "my memory was :" $(free -m)
echo "my CPU was :" $(lscpu --version)
echo "my Disk space was :" $(df -h --total|grep total|awk '{print $2}')
