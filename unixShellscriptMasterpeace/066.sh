#!/bin/bash

# IPアドレスによる処理分岐をcase文で書く

# 対象IPアドレスがコマンドライン引数で
if [ -z "$1" ]; then
    echo "IPアドレスを指定してください" >&2
    exit 1
fi

case "$1" in
    192.168.2.*|192.168.10.*)
        ping -c 1 "$1" > /dev/null/ 2>&1
        if [ $? -eq 0 ]; then
            echo "Ping to $1 : [OK]"
        else
            echo "Ping to $1 : [NG]"
        fi
    ;;
    *)
        echo "$1はテスト対象ではありません" >&2
        exit 2
    ;;
esac
