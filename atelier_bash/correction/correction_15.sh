#!/bin/env bash

if [ ! -x ~/server/test.sh ]; then
    echo "Incorrect! test.sh n'est pas exécutable"
    exit 1
fi

cd ~/.hidden
rm main.py > /dev/null 2>&1
cp main_broken.py main.py

~/server/test.sh > /dev/null 2>&1

if [ $? -eq 1 ]; then
  echo "Correct: Code de retour 1 quand le serveur est cassé"
else
  echo "Incorrect: Code de retour 0 quand le serveur est cassé, devrait être 1"
fi

cp main_working.py main.py

~/server/test.sh > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "Correct: Code de retour 0 quand le serveur est fonctionnel"
else
  echo "Incorrect: Code de retour 1 quand le serveur est fonctionnel, devrait être 0"
fi

rm main.py
