#!/bin/env bash

correct_content=$(cat ~/ApplicationData/output/logs/build.log)
content=$(cat ~/log_backup/build_backup.log)

if [ "$content" -eq "$correct_content" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi
