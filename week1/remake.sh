#!/bin/bash 
if [[ $# > 1 ]] || ! [[ -d $1 ]] ;then
echo "Error" ; exit 1
fi

cd $1
touch ciao guarda come diverto
mkdir mamma mi




chmod 442 ciao ; touch -d "2026-01-01 00:01" "ciao"
chmod 777 mamma ; touch -d "2026-01-02 00:01" "mamma"
chmod 400 guarda ; touch -d "2026-01-03 00:01" "guarda"
chmod 642 come ; touch -d "2026-01-04 00:01" "come"
chmod 452 mi ; touch -d "2026-01-05 00:01" "mi"
chmod 421 diverto ; touch -d "2026-01-06 00:01" "diverto"

