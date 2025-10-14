#!/bin/bash

read -p "Enter directory path:" path

if [ -z "$path" ]; then
	path="/"
fi

read -p "Enter the filename: " file_name
if [ -f "$file_name" ]; then
	echo "file found"
else
	echo "file not found"
fi
