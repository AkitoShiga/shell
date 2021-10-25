#!/bin/bash

# 特定プロセスの起動本数の閾値チェック

commanme="/home/usr/bin/"
threshold=3

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l )

if [ "$count" -ge "$threshold" ]; then
    echo "error $commname $count" >&2
    exit 1
fi
