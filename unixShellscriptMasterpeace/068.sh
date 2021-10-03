#!/bin/bash

# 末尾一文字でソートする

# 一時ファイルの指定
tmpfile="sort.lst"

if [ ! -f "$1" ]; then
    echo "ID" >&2
    exit 1;
fi

rev "$1" | sort | rev > $tmpfile

./report.sh $tmpfile

rm -f $tmpfile
