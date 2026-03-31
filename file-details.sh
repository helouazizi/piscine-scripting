#!/bin/bash

DIR="hard-perm"

# Create directory if missing
mkdir -p "$DIR"

# Create entries if missing
mkdir -p "$DIR/0" "$DIR/3" "$DIR/A"
touch "$DIR"/{1,2,4,5,6,7,8,9}

# Apply required permissions
chmod 701 "$DIR/0"
chmod 402 "$DIR/1"
chmod 604 "$DIR/2"
chmod 777 "$DIR/3"
chmod 510 "$DIR/4"
chmod 460 "$DIR/5"
chmod 460 "$DIR/6"
chmod 510 "$DIR/7"
chmod 604 "$DIR/8"
chmod 402 "$DIR/9"
chmod 701 "$DIR/A"

# Display output
ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR" | sed '1d' | awk '{print $1, $6, $7, $8, $9}'