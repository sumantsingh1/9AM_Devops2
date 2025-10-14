#!/bin/bash

#4. Write a shell script to find all files ends with ".java" in a directory(s)
#   a. run a loop with count of files found
#  b. if files found filter only last 10 days
#  c. Delete files last 10days 

#finding directory
echo "Please enter DIR name"
read DIR

#if director not entered or empty then take as current director
if [ -z $DIR ]; then
	DIR="."

fi

#finding a file in Dir

echo "All files ends with ".java" in $DIR is: "
All_file=$(find "$DIR" -type f -name "*.java")

#counting of file found 
COUNT=$( echo "$All_file" | wc -l )
echo " Total number of file fpund is : $COUNT"

#file not found then say
if [ $COUNT -eq 0 ];then
	echo" No file found in DIR "

fi

#last10 days files
LAST10=$(find "$DIR" -type f -name "*.java" -mtime -10)

echo "FIle found filetered only last 10 days is $LAST10"

#Delete files last 10days 
find "$DIR" -type f -name "*.java" -mtime -10 -delete 

echo "Successfully deleted files last 10days "



