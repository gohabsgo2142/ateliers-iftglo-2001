#!/bin/env bash

correct_content=$(grep Error ~/ApplicationData/output/logs/messages.txt)
content=$(cat ~/errors.txt)

if [ "$content" -eq "$correct_content" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi

