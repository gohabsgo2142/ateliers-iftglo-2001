#!/bin/env bash

correct_content=$(awk '{print $5 " " $3}' ~/ApplicationData/db.tsv | awk '{print $5 " " $3}' db.tsv | sort -h | head -n 10 | awk '{print $2}')
content=$(cat ~/out_14.txt)

if [ "$content" -eq "$correct_content" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi