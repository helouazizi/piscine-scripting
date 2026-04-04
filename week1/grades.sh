#!/bin/bash
if [[ $# != 1 ]]; then
        >&2 echo "Error: expect 1 argument only!"
        exit 1
fi

declare -a messages

for (( i=1;i<=$1;i++ ));do
        read -p "Student Name $i: " name
        read -p "Student Grade $i: " grade
        if ! [[ $grade =~ ^[0-9]+$ ]] || [[ $grade -gt 100 ]];then
                >&2 echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted."
                exit 1
        elif [[ $grade -ge 90 ]];then
                messages+=("$name: You did an excellent job!")
        elif [[ $grade -ge 70 ]];then
                messages+=("$name: You did a good job!")
        elif [[ $grade -ge 50 ]];then
                messages+=("$name: You need a bit more effort!")
        else
                messages+=("$name: You had a poor performance!")
        fi
done

for message in "${messages[@]}";do
        echo $message
done
