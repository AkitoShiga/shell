#!/bin/bash

# ログファイルのカラム一を入れ替えて出力し、見やすく加工する
if [ ! -f "$1" ]; then
    echo "logfile does not exists: $1" >&2
    exit 1
fi

# リクエスト時刻とリモートホストを外部ファイルへ出力
awk '{print $4,$5,$1}' "$1" > "${1}.lst"
