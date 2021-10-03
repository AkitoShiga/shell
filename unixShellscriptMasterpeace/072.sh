#!/bin/bash

# CSVファイルから、指定した特定レコードのカラムの値を得る

# csvファイルを指定
csvfile="data.csv"

if [ -z "$1" ]; then
    echo "IDを指定してください" >&2
    exit 1
fi

# csvファイルが存在しなければ終了
if [ ! -f "$csvfile" ]; then
    echo "CSVファイルが存在しません: $csvfile" >&2
    exit 1
fi

while read line
do
    id=$(echo $line | cut -f 1 -d ',')
    name=$(echo $line | cut -f 2 -d ',')
    score=$(echo $line | cut -f 3 -d ',')

if [ "$1" = "$id" ]; then
    echo "$name"
fi

done < $csvfile
