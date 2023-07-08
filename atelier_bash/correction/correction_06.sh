#!/bin/env bash

folder_path="~/ApplicationData/output/logs/"   # Specify the path to the folder you want to validate
num_files=$(find "$folder_path" -maxdepth 1 -name "*.tmp" | wc -l)

if [[ $num_files -eq 0 ]]; then
    num_files=$(find "$folder_path/output" -maxdepth 1 -name "*.out" | wc -l)
    if [ -d "$folder_path/tmp" ]; then
        echo "Incorrect!"
        exit 1
    else
        echo "Correct!"
    fi
else
    echo "Incorrect!"
    exit 1
fi
