#!/bin/bash


read -p "Enter your username: " username

#Checking username entered is empty
if [ -z "$username" ]; then 

	echo "Username can't be empty "
	exit 1
fi

#Checking for username contains only letters and uppercase

if [[ "$username" =~ ^[A-Z]+$ ]]; then
    
	echo "Valid username: $username "

else 
	echo "invalid username , it must be uppercase letters only"
fi


