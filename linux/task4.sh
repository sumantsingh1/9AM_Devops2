#!/bin/bash

files=$(find . -type f -name "*.java")
count=0

for file in $file; do
	((count==))
	echo "file $count: $count: $file"
done
echo "Total files: $count"
echo "files in last 10 days:"
find . -type f -name "*.java" -mtime -10

read -p "want to delete?(y/n): " confirm
if [ "$confirm" = "y" ]; then
	find . -type f -name "*.java" -mtime -10 -delete
	echo "Deleted."
else
	echo "Deletion cancelled."
fi
