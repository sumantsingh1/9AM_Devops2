#!/bin/bash

read -p "Enter the the User Name :" username
read -p "Enter the the Password :" pass

if [ -z "$pass" ]  && [ -z "$username" ];
then
	echo "your user name and Passwerd was empty...Please check"
	exit 1
fi

if [[ ! "$pass" =~ [A-Z] ]];
then
	echo "at least one upper Case charecter was required"
	exit 1
fi
if [[ ! "$pass" =~ [a-z] ]];
then
	echo "at leat one Lower Case charecter was required"
	exit 1
fi
if [[ ! "$pass" =~ [0-9] ]];
then
	echo "At Least One Number was required"
	exit 1
fi

if [[ ! "$pass" =~ ^[A-Za-z0-9]+$ ]];
then
	echo "Password Was Alpha numeric only"
	exit 1
fi
echo "************Your Credentials are valid******************"
