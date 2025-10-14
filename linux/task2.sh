#!/bin/bash

read -p "Enter the filename:" file_name

if [ -f "$file_name" ];
then
	echo "file is exists"
else
	echo "file not found"
	exit 1
fi

echo "NO of lines in a file:'wc -1 $file_name'"
echo "NO of words in a file: 'wc -w $file_name'"
echo "No of char in a file: 'wc -c $file_name'"

