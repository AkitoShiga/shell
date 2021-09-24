#!/bin/bash

# デフォルトゲートウェイにpingが通るかテストする(Mac)

gateway=$(netstat -nr | awk '$1 == "default" {print $2}')
ping -c 1 $gateway > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "[Success] ping -> $gateway"
else
    echo "[Failed] ping -> $gateway"
fi
