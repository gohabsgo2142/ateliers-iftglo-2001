#!/bin/env bash

./ApplicationData/output/logs/diagnostic.sh

./ApplicationData/output/logs/cleanup.sh

correction_05.sh
if [ $? -eq 0 ]; then
    correction_06.sh
    if [ $? -eq 0 ]; then
        echo "Correct!"
    else
        echo "Incorrect!"
        exit 1
    fi
else
    echo "Incorrect!"
    exit 1
fi

