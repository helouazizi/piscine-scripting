#!/bin/bash

max=0
for i in {1..10}; do
	read -p "Enter a number: " number
	if ! [[ $number =~ ^[0-9]+$ ]]; then
		echo "ERROR: Invalid input only positive numerical characters are allowed"
		exit 1
	elif [[ $number -gt 10000 ]]; then
		echo "ERROR: The number entered is too large"
		exit 1
	elif [[ $number -gt $max ]];then
		max=$number
	fi
done
echo "The largest number is: $max"
