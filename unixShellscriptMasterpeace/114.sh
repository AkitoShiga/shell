#!/bin/bash

# サーバーのping監視を行う
result=1

if [ -z "$1" ]; then
    echo "select host" >&2
    exit 1
fi

i=0
while [ $i -lt 3 ]
do
    ping -c 1 "$1" > /dev/null

    if [ $? -eq 0 ]; then
        result=0
        break
    else
        sleep 3
        i=$(expr $i + 1)
    fi
done

date_str=$(date)

if [ $result -eq 0 ]; then
    echo "[$date_str] Ping OK: $1"
else
    echo "[$date_str] Ping NG: $1"
fi
