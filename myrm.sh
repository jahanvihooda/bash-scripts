#!/bin/bash

mkdir -p /tmp/jhooda/eecs2031m/a1/recycle.bin

if [ "$#" = "0" ]; then # checks for parameters	
	echo "Error: no target specified"
	echo "Usage: ./myrm <files>"
else 
	for i in "$@"; do
		if [ -f "$i" ]; then # checks if file exists
			mv "$i" /tmp/jhooda/eecs2031m/a1/recycle.bin
			echo "deleting "$i""
		else 
			echo "file "$i" does not exist - unable to delete"
		fi
	done
fi

