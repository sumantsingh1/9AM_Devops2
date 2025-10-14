#!/bin/bash

# Ask user for directory path
echo "Enter directory path (press Enter for default '/'):"
read path

# If user didn’t enter anything, set default path to /
if [ -z "$path" ]; then
    path="/"
fi

# Check if the directory exists
if [ ! -d "$path" ]; then
    echo "Error: Directory '$path' not found!"
    exit 1
fi

# Ask user for file name to search
echo "Enter filename to search:"
read filename

# If filename is empty, show error
if [ -z "$filename" ]; then
    echo "Error: Filename cannot be empty!"
    exit 1
fi

echo "---------------------------------------"
echo "Searching for '$filename' under '$path'..."
echo "---------------------------------------"

# Use find command
find "$path" -type f -name "$filename" 2>/dev/null

echo "---------------------------------------"
echo "Search completed!"

