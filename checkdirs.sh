#!/bin/bash

DIR="/root/scripts/test"

if [ -d "$DIR" ]; then		# if directory exists , ends in a ; since it's a single statement
	echo "The directory $DIR exists"  # no semicolon needed b/c its not a statement, just an echo command
else
	echo "The directory $DIR does not exist"
	read -p "would you like to create it?" yn
	case $yn in
		[Yy]* ) mkdir /root/scripts/test;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no";;
	esac
fi
