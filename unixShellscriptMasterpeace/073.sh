#!/bin/bash
# csvにIDリストを入力して、対応するIDのカラム値を得る

filecheck()
{
    if [ ! -f "$1" ]; then
        echo "ERROR: File $1 does not exist." >&2
        exit 1;
    fi
}

# データcsvファイル名と、IDリストファイル名を定義して
# ファイルの存在チェックを行う
csvfile="data.csv"
idlistfile="$1"
filecheck "$csvfile"
filecheck "$idlistfile"
while IFS=, read id name score
do
    grep -xq "$id" "$idlistfile"
    if [ $? -eq 0 ]; then
        echo $name
    fi
done < "$csvfile"
