#!/bin/bash

# sed置換で、シンボリックファイルを実ファイルで置き換えないようにする

filename="target.txt"

if [ ! -e "$filename" ]; then
    echo "ERROR: File not exists." >&2
    exit 1
elif [ -h "$filename" ]; then
    # 対象ファイルがシンボリックリンクならば、readlinkで
    # 実体ファイルに処理を行う
    # -iは別ファイルを作らず直接上書き
    # .bakでバックアップファイルを作る
    # 通常-iはシンボリックリンクそのものを書き換えてしまう
    # readlinkでシンボリックリンクのパスを読み取り、それをコマンド置換で引数に渡している
    sed -i.bak "s/Hello/Hi/g" "$(readlink "$filename")"
else
    sed -i.bak "s/Hello/Hi/g" "$filename"
