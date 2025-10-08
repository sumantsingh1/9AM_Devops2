#!/bin/bash

echo "the top current process id was:" $(ps -eo pid,time,%cpu|head -n 10)
