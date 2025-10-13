#!/bin/bash


read -p "Enter the Directory:" path
read -p "Enter the file name:" file_name

if [ -z "$path" ] || [ ! -d "$path" ];
then
	echo "your path name was empty,please give proper path"
	path="/"
fi       

if [ -z "$file_name" ];
then
	echo "your file name is empty ,please give your file name"
	exit 1
fi
echo "searching for '$file_name' in '$path'...."
find "$path" -type f -name "$file_name"
