#!/bin/bash
if [[ $# != 1 ]] || ! [[ $1 =~ ^[0-9]+$ ]] || [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]];then
        echo "Error: wrong argument"
        exit 1
fi

for (( i=5 ; i>=1 ; ));
do
        echo "Enter your guess ($i tries left):"
        read guess
        if ! [[ $guess =~ ^[0-9]+$ ]] || [[ $guess -lt 1 ]] || [[ $guess -gt 100 ]];then
                continue
        elif [[ $guess -lt $1 ]];then
                echo "Go up"
        elif [[ $guess -gt $1 ]];then
                echo "Go down"
        else
                echo "Congratulations, you found the number in $(expr 6 - $i) moves!"
                exit 0
        fi

        i=$(expr $i - 1)
done

echo "You lost, the number was $1"
