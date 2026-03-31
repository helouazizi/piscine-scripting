#!/bin/bash

DIR="hard-perm"

mkdir -p "$DIR"/{0,3,A}
touch "$DIR"/{1,2,4,5,6,7,8,9}

chmod 755 "$DIR"/{0,3,4,7,A}
chmod 644 "$DIR"/{1,2,5,6,8,9}

format_ls() {
  awk '{
    date=$6;
    time=$7;
    name=$NF;
    perm=$1;
    print perm, date, time, name
  }'
}

ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR" | sed '1d' | format_ls
ls -ld --time-style="+%Y-%m-%d %H:%M" "$DIR" | format_ls