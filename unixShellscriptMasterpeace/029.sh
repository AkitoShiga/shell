#!/bin/bash

# 多数のHTMLファイルから特定の要素を抽出して、HTMLファイルごとに別々のファイルへ出力したい時

# カレントディレクトリのhtmlファイルを対象

for htmlfile  in *.html
do 
    # ファイル名から拡張子を含まない文字列を取得する
    fname=$(basename $htmlfile .html)

    # <title>タグの中身を後方参照\1として抽出し、ファイル出力する
    # 末尾の$ひつようなのかよくわからない
    sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $htmlfile > output/${fname}.txt

done
