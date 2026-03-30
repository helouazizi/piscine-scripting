#!/bin/bash

find . -type f -name "*.txt" | sed 's#.*/##; s/\.txt$//'