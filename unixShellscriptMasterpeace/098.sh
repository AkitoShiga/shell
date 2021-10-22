#!/bin/bash

# 変数を読み込んだIPアドレスのリストを読み込んでping実行

if [ -z "$1" ]; then
    echo "No Arg" >&2
    exit 1
fi
# ping_target.lstの 変数部分を引数に置換して取得する
for ipaddr in $(sed "s/%ADDR_HEAD%/$1/" ping_target.lst)

do
    ping -c $ipaddr > /dev/null/ 2>&1

    if [ $? -eq 0 ]; then
        echo "Success $ipaddr" 
    else
        echo "Failed $ipaddr" 
    fi
done
