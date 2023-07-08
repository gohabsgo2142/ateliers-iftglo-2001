#!/bin/env bash

correct_content=$(grep Error ~/ApplicationData/output/logs/messages.txt | uniq | sed 's/Error \(4[0-9]\+\)/Warning \1/g')
content=$(cat ~/out_12.txt)

if [ "$content" -eq "$correct_content" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi
