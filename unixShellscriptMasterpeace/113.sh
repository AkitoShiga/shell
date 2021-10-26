#!/bin/bash

# 監視中のプロセスがダウンしたら自動で再起動する

commname="/usr/sbin/httpd"

start="service httpd start"

count=$(ps ax -o command | grep "$commname" | grep -v "&grep" | wc -l)

if [ "$count" -eq 0 ]; then

    date_str=$(date)
    echo "[$date_str] $commname " >&2
    echo "[$date_str] $commname 起動" >&2

    $start
fi

