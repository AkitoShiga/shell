#!/bin/bash

# 右つめで数値を表示して、テキストで数値の表を作る

search_text="Error: 19"

for filename in *.log
do
    count=$(grep -c "$search_text" "$filename")
    printf "%6s (%s)\n" "$count" "filename"
done
