#!/bin/env bash

cd ~/server

uvicorn main:app & > /dev/null 2>&1

server_pid=$!
stop_server() {
  kill $server_pid
}
trap stop_server EXIT
sleep 1

curl localhost:8000

if [ $? -eq 0 ]; then
  echo "Correct! Le server est fonctionnel"
else
  echo "Incorrect! Le server n'est pas fonctionnel"
  exit 1
fi
