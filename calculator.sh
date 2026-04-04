#!/bin/bash
if [[ $# != 3 ]]; then
        >&2 echo "Error: expect 3 arguments"
        exit 1
fi

if ! [[ $1 =~ ^[-+]?[0-9]+$ ]] || ! [[ $3 =~ ^[-+]?[0-9]+$ ]];then
        >&2 echo "Error: invalid number"
        exit 4
fi

do_add () {
        echo $(expr $1 '+' $2)
}

do_sub () {
        echo $(expr $1 '-' $2)
}

do_mult () {
        echo $(expr $1 '*' $2)
}

do_divide () {
        echo $(expr $1 '/' $2)
}


case $2 in
        "+")
                do_add $1 $3
        ;;
        "-")
                do_sub $1 $3
        ;;
        "*")
                do_mult $1 $3
        ;;
        "/")
                if [[ $3 == 0 ]]; then
                        >&2 echo "Error: division by 0"
                        exit 2
                else
                        do_divide $1 $3
                fi
        ;;
        *)
                >&2 echo "Error: invalid operator"
                exit 3
        ;;
esac
