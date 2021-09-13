#!/bin/bash

# 拡張子の混在したファイルを一括で.txtにする

for filename in *
do
    case "$filename" in
        *.htm | *.html)
            # ファイル名の前の部分を取得
            headname=${filename%.*}

            # ファイル名を.txtに変換
            mv "$filename" "${headname}.txt"
        ;;
    esac
done
