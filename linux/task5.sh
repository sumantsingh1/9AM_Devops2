#!/bin/bash

if command -v tomcat &> /dev/null; then
	echo "Tomcat already installed."
else
	echo "Tomcat not installed."
	sudo apt-get install update
	sudo apt-get install tomcat9

	if [ $? -eq 0 ]; then
		echo "Tomcat installed successfull."
		sudo systemctl start tomcat9
		sudo systemctl enable tomcat9
	else
		echo " Failed to install. "
	fi
fi
