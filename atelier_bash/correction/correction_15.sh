#!/bin/env bash

cd ~/.hidden
rm main.py
cp main_broken.py main.py

~/server/test.sh

if [ $? -eq 1 ]; then
  echo "Correct!"
else
  echo "Incorrect!"
fi

cp main_working.py main.py

~/server/test.sh

if [ $? -eq 0 ]; then
  echo "Correct!"
else
  echo "Incorrect!"
fi

rm main.py
