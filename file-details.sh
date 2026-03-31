#!/bin/bash

DIR="hard-perm"

mkdir -p "$DIR"/{0,3,A}

touch "$DIR"/{1,2,4,5,6,7,8,9}

chmod 755 "$DIR/0" "$DIR/3" "$DIR/4" "$DIR/7" "$DIR/A"
chmod 644 "$DIR/1" "$DIR/2" "$DIR/5" "$DIR/6" "$DIR/8" "$DIR/9"

format_ls() {
  awk '{print $1, $6, $7, $8, $9}'
}

ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR" | sed '1d' | format_ls

ls -ld --time-style="+%Y-%m-%d %H:%M" "$DIR" | format_ls