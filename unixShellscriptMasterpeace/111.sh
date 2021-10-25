#!/bin/bash

# 特定のプロセスが停止していないか監視する
commname="/usr/libexec/mysql"

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l)

if [ "$count" -eq 0 ]; then
    echo "process $commname is not found" >&2
    exit 1
fi

