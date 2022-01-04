#!/bin/bash

# シェル変数を整数値など属性付きで宣言する

url_template="http://www.example.org/download/img_%03d.jpg"

declare -i count=0

while [$count -le 10]
do
  url=$(printf "$url_template" $count)
  curl -0 "$url"

  count=count+1
done
