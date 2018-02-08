#!/bin/bash

if [ "$#" != "3" ] || [ "$2" != "+" ] && [ "$2" != "-" ] && [ "$2" != "x" ] && [ "$2" != "/" ]; then # explain usage for incorrect parameters
	echo "Usage- ./calculator.sh value1 operator value2"
	echo "where,"
	echo "value1: numeric value"
	echo "value2: numeric value"
	echo "operator: one of +, -, /, x"
	exit
fi

var=0
if [ "$2" = "+" ]; then
	var=$(($1+$3))
	echo "$var"
elif [ "$2" = "-" ]; then
	var=$(($1-$3))
	echo "$var"
elif [ "$2" =  "x" ]; then
	var=$(($1*$3))
	echo "$var"
else # must be division
	if [ "$3" = "0" ]; then # check for 0 denominator 
		echo "Division-by-zero Error!"
		exit
	fi
	var=$(($1/$3))
	echo "$var"
fi

