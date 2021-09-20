#!/bin/bash

# タイムスタンプを比較して、古い方を削除

log1="log1.log"
log2="log2.log"

# 引数のファイルが存在するか調べ、存在しない場合は終了
filecheck()
{
    if [ ! -e "$1"]; then # !存在する
        echo "ERROR: File $1 does not exist." >&2
        exit 1;
    fi
}

filecheck "$log1"
filecheck "$log2"

# 2つのファイルの新旧を調べ古い方を削除する
if [ "$log1" -nt "$log2"]; then
    echo "[$log1]->newer, [$log2]->older"
    rm $log2
else
    echo "[$log2]->newer, [$log1]->older"
    rm $log1
fi
