#!/bin/bash

read -p "enter the file name: " file_name

echo "no of line in the file: `wc -l $file_name`"
echo "no of word in the file: `wc -w $file_name`"
echo "no of char in the file: `wc -c $file_name`"
