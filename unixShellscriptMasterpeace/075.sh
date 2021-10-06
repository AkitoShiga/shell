#!/bin/bash

# csvの数値を読み取ってグラフ化する
csvfile="data.csv"
GRAPH_WIDTH=50

markprint() {
    local i=0
    while [ $i -lt $1 ]
    do
        echo -n "*"
        i=$(expr $i + 1)
    done
}

# データから最大値を取得する。逆順ソートしてて先頭を取る
max=$(awk -F, '{print $3}' "$csvfile | sort -nr | head -n 1")

# データのすべてが0の場合は最大値を1とする
if [ $max -eq 0 ]; then
    max=1
fi

# CSVファイルを読み込み、値をグラフ化する
while IFS=, read id name score
do
    markprint $(expr $GRAPH_WIDTH \* $score / $max)
done < $csvfile
