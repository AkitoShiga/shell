#!/bin/bash

# ダウンロードしたファイルのハッシュ値を計算する

url_path="http://www/example.org/"
filename="sample.dat"

curl -s0 "${url_path}${filename}" && md5 "$filename"

rm -f "$filename"
