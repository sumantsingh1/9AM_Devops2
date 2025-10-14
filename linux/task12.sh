#!/bin/bash

# Ask user for the file name
echo "Enter the file name:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

echo "--------------------------------------"
echo "      FILE CONTENT DETAILS"
echo "--------------------------------------"

# Count number of lines, words, and characters
lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -m < "$filename")

echo "File Name   : $filename"
echo "No. of Lines: $lines"
echo "No. of Words: $words"
echo "No. of Chars: $chars"
echo "--------------------------------------"

