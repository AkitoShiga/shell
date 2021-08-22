#!/bin/bash

# コマンドの使い方を表示する際に、現在の自分のファイル名を使って例示する

prog=$(basename "$0")

# 引数が1つでない時は、ヘルプを表示して終了
if [ $# -ne 1 ]; then
    echo "Usage: $prog <string>" 1>&2
    exit 1
fi

echo "Start: $prog..."
echo "input Argument: $1"
echo "Stop: $prog"
