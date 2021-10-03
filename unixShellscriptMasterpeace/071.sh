#!/bin/bash

# 入力ファイルのカラム値を、行ごとに追加カラムとして出力する

tmpfile="hash.txt"

:> $tmpfile

IFS='
'

while read -r line
do
    # 各業のMD5ハッシュを取得する
    # コマンドの後ろにはファイル名がつくため、1カラム目を取り出す
    echo -n "$line" | md5sum | awk '{print $1}' >> $tmpfile
done < $1

# 元のテキストファイルと、ハッシュ値を出力した一時ファイルを
# カンマ区切りで連結して表示する

