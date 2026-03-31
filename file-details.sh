#!/bin/bash

DIR="hard-perm"

# Create structure
mkdir -p "$DIR/0" "$DIR/3" "$DIR/A"
touch "$DIR"/{1,2,4,5,6,7,8,9}

# Apply standard permissions
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

# Output formatted listing (including directory itself)
ls -l --time-style="+%Y-%m-%d %H:%M" "$DIR"