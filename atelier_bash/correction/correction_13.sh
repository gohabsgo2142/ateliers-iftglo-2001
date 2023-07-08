#!/bin/env bash

correct_content=$(find ~/ -type f | xargs du -sb | sort -rh | head -n 5)
content=$(cat ~/out_13.txt)

if [ "$content" -eq "$correct_content" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi

