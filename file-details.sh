#!/bin/bash

DIR="hard-perm"

mkdir -p "$DIR"
mkdir -p "$DIR/0" "$DIR/3" "$DIR/A"
touch "$DIR"/{1,2,4,5,6,7,8,9}

# Apply correct permissions
# bash hard-perm.sh
# chmod 701 "$DIR/0"
# chmod 402 "$DIR/1"
# chmod 604 "$DIR/2"
# chmod 777 "$DIR/3"
# chmod 510 "$DIR/4"
# chmod 460 "$DIR/5"
# chmod 460 "$DIR/6"
# chmod 510 "$DIR/7"
# chmod 604 "$DIR/8"
# chmod 402 "$DIR/9"
# chmod 701 "$DIR/A"
chmod 401 hard-perm/0
chmod 402 hard-perm/1
chmod 604 hard-perm/2
chmod 777 hard-perm/3
chmod 510 hard-perm/4
chmod 460 hard-perm/5
chmod 460 hard-perm/6
chmod 510 hard-perm/7
chmod 604 hard-perm/8
chmod 402 hard-perm/9
chmod 401 hard-perm/A

ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR" | sed '1d' | awk '{print $1, $6, $7, $8, $9}'