#!/bin/bash

DIR="hard-perm"

mkdir -p "$DIR/0" "$DIR/3" "$DIR/A"
touch "$DIR"/{1,2,4,5,6,7,8,9}

chmod 755 "$DIR/0"
chmod 644 "$DIR/1"
chmod 644 "$DIR/2"
chmod 755 "$DIR/3"
chmod 755 "$DIR/4"
chmod 644 "$DIR/5"
chmod 644 "$DIR/6"
chmod 755 "$DIR/7"
chmod 644 "$DIR/8"
chmod 644 "$DIR/9"
chmod 755 "$DIR/A"

ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR" | sed '1d' | awk '{print $1, $6, $7, $8, $9}'

ls -ld --time-style="+%Y-%m-%d %H:%M" "$DIR" | awk '{print $1, $6, $7, $8, $9}'