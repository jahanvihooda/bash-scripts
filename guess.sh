#!/bin/bash

number=$(($RANDOM % 64 + 1)) # define random number 1 - 64 (inclusive)

echo "Welcome to the number game."
echo "Guess a number between 1 and 64 (inclusive)."

for i in 1 2 3 4 5 6 # after 6 attempts, user loses
do
	read guess
	if [ "$guess" -gt "$number" ]; then
		if [ "$i" = "6" ]; then
			echo "Too big."
			echo "You lost!"
			exit
		fi
		echo "Too big."
		echo "Try again."
	elif [ "$guess" -lt "$number" ]; then
		if [ "$i" = "6" ]; then
			echo "Too small."
			echo "You lost!"
			exit
		fi
		echo "Too small."
		echo "Try again."
	else # $guess must equal $number
		echo "You won!"
		exit
	fi
done

