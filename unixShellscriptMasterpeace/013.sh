#!/bin/bash

# 読み込んだHTMLファイルから特定の属性値を取得する

quote="[\"']"
match="[^\"']*"

while read line
do
  href=\
  # 算術式の評価ではなく、正規表現でマッチした文字列をとりだしている
  $(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*")
  if[ $? -eq 0]; then
    echo $href
  fi
done < index.html