#!/bin/bash

# 作業中のユーザーはいないか
other_user=$(who | wc -l)
if [ "$other_user" -ge 2 ]; then
    echo "[ERROR] other user" >&2
    exit 1
fi

# 指定のプロセスが立ち上がっていないか
commname="/usr/libeexec/mysqld"
ps ax -o command | grep -q "^$commname"
if [ $? -eq 0 ]; then
    echo "[ERROR] $commname is running" >&2
fi

shutdown -h now
