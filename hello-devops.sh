#!/bin/bash

username=$(grep -oP 'git/\K[^/]+' .git/config)


echo "Hello $username!"