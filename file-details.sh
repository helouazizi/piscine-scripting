#!/bin/bash

ls -l --time-style="+%Y-%m-%d %H:%M" "$(dirname "$0")/hard-perm" \
| sed '1d' \
| awk '{print $1, $6, $7, $8, $9}'