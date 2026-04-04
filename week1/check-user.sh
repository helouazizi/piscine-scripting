#!/bin/bash
if [[ $# != 2 ]];then
	>&2 echo "Error: expect 2 arguments"
	exit 1
fi

case $1 in
	"-e")
		res=$(getent passwd $2)
		if  [[ $res == "" ]];then
			echo "no"
		else
			echo "yes"
		fi
	;;
	"-i")
		getent passwd $2
	;;
	*)
		>&2 echo "Error: unknown flag"
		exit 1
	;;
esac
