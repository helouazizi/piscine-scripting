#!/bin/bash 
if [[ $# != 1 ]] || ! [[ $1 =~ ^[1-5]$ ]];then
	echo "Error"
else
array=("red" "blue" "green" "white" "black")

echo ${array[$(expr $1 - 1)]}
fi


