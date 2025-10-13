#!/bin/bash


read -p "Enter you Full Name :" username

if [ -z "$username" ];
then
	echo "your user name was empty,please give a valid user name"
	exit 1
fi
if [[ "$username" =~ [[:space:]] ]];
then
	echo "User Should not contain Spaces."
	exit 1
fi
if [[ ! "$username" =~ ^[A-Z]+$ ]];
then
	echo "Enter only Upper Case letters"
	exit 1
fi
echo "username '$username' is valid"
