#!/bin/bash

DIR="/opt/131224-wdm"

echo "List of files and their permissions $DIR:"
ls -l Ð"$DIR" | awk '$1 ~ /^-/ {print $1, $9}'

echo "Add execution rights .sh fiels..."
find "$DIR" -maxdepth 1 -type f -name "*.sh" -exec chmod +x {} \;


