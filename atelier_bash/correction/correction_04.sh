#!/bin/env bash

file_path="~/ApplicationData/output/logs/diagnostic.sh"

if [[ -x "$file_path" ]]; then
    echo "Correct!"
else
    echo "Incorrect!"
    exit 1
fi
