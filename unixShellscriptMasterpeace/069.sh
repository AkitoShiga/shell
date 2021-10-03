#!/bin/bash

# テキストファイルから区切り文字を指定してカラムを取り出す

#
envname="TMPVAR"

env | cut -f 1 -d "=" > env.lst


# チェックする環境変数名がenv.lstにマッチするかで未定義かどうかを確認する
grep -q "^${envname}$" env.lst


if [ $? -eq 0 ]; then
    echo "環境変数$envnameは設定されています"
    ./start.sh
else
    echo "環境変数 $envname が設定されていません"
fi
