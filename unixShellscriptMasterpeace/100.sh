#!/bin/bash

# 強制終了されるまでファイルのダウンロードを繰り返して通信チェックを行う

url="http://192.168.22.1/webapl/check"

while true
do
    curl -so /dev/null "$url"

    if [ $? -eq 0 ]; then
        echo "OK"
    else
        echo "NG"
    fi

    sleep 5

done
