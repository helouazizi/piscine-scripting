ls -l --time-style="+%F %R" | sed -n 2~1p | awk '{print $1, $6, $7, $8}'
