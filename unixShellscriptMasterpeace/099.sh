#!/bin/bash

# 連番のファイル名を持つURLを自動生成して順番にダウンロードする
url_template="http://www.example.org/%03d.org"

for i in $(seq 10)
do
    # printfで%03dが00$iに置き換わる
    url=$(printf "$url_template" $i)
    curl -0 "$url
done
