#!/bin/bash

FILE="loger.log"


while true; do
  cd ~
  cd gpUxgdSz
  if ps -C javarunprocess > /dev/null
  then

  else

    cd ~
    cd gpUxgdSz

     ./javarunprocess > /dev/null 2>&1 &
  fi
  # Wait for 3 minutes
  sleep 180
done
