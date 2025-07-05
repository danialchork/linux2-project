#!/bin/bash

FILE="loger.log"


while true; do
  cd ~
  cd gpUxgdSz
  if ps -C javarunprocess > /dev/null
  then
    echo "running"
  else
    echo "NOT running"
    cd ~
    cd gpUxgdSz

     ./javarunprocess &
  fi
  # Wait for 3 minutes
  sleep 180
done
