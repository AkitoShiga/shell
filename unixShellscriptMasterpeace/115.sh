#!/bin/bash

# Webアクセスの監視

# 監視目標
url="https://www.example.org/webapps/check"

# 現在日付を[2013/02/01 13:15:44]の形で組み立て
date_str=$(date)

# 監視URLにcurlコマンドでアクセスし終了ステータスを変数curl resultに代入
httpstatus=$(curl -s "$url" -o /dev/null -w "%{http_code}")
curlresult=$?

# curlコマンドが失敗していたらHTTP接続が異常とみなす
if [ "$curlresult" -ne 0 ]; then
    echo "[$date_str] HTTP接続異常 : curl exit status[$curlresult]"
    /home/user1/bin/alert.sh
# 400番台、500番台のHTTPのステータス異常
elif [ "$httpstatus" -ge 400 ]; then
    echo "[$date_str] Error HTTP Status[$httpstatus]"
    /home/user1/bin/alert.sh
fi
