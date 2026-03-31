#!/bin/bash

curl -s https://learn.zone01oujda.ma/assets/superhero/all.json \
| jq '.[] | select(.id == 1) | {name, power: .powerstats.power}' \
| grep -E '"name"|"power"'
