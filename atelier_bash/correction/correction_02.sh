#!/bin/env bash

correct_path="/home/glo2001/ApplicationData/output/logs"
content=$(cat ~/out_02.txt)

if [ "$content" -eq "$correct_path" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi
