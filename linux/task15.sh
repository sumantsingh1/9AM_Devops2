#!/bin/bash

if dpkg -l | grep -q tomcat; then
	echo " Tomcat is installed already on the system "

else
	echo " Tomcat is not installed ,installing now "

	sudo apt update -y
	sudo apt install tomcat9 -y

if dpkg -l | grep -q tomcat; then 
	echo " Tomcat is installedsuccessfullt "

else 
	echo "Tomcat is failed to installed "
fi

fi 
