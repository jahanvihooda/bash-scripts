#!/bin/bash

while :
do
	clear

	echo "--------------------------------"
	echo " MAIN - MENU"
	echo "--------------------------------"
	echo "1. Ongoing Processor Activity"
	echo "2. Users currently logged in"
	echo "3. Number of users currently logged in"
	echo "4. Users with bash shell"
	echo "5. Exit"
	echo "--------------------------------"
	read -p "Please enter option [1 - 5]:" input # reads input on same line
	
	case $input in 
		1) top -n 1 ;; # runs top once
		2) who ;;
		3) who | wc -l ;;
		4) ps aux | grep bash | grep -v grep | cut -d " "  -f 1 | sort | uniq ;; # displays unique usernames running bash
		5) exit ;;
		*) echo "Invalid entry"
		   echo "Usage: Enter option [1 - 5] when prompted"
	esac
read -p "Press [enter] key to continue..."
done

