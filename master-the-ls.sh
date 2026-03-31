#!/bin/bash

ls -tu -p | tr '\n' ',' | sed 's/,$//'