#!/bin/bash

# ゼロ埋めされた文字列を数値として抽出する

# 抽出するID
match_id=1
csvfile="data.csv"

if [ ! -f "$csvfile" ]; then
    echo "No file : $csvfile" >&2
    exit 1
fi

#CSVファイル読みこみ
while read line
do
    # 行内の各カラムをcutコマンドで取り出す
    id=$(echo $line | cut -f 1 -d ',')
    name=$(echo $line | cut -f 2 -d  ',')

    if [ "$id" -eq "$match_id" ]; then
        echo "$name"
    fi
done < "$csvfile"
