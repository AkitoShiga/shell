#!/bin/bash

# ログファイルからファイルごとのアクセス回数を集計する

logfile="access_log"

# ログファイルが存在しなければ終了
if [ ! -f "$logfile" ]; then
    echo "対象のログファイルが存在しません : $logfile" >&2
    exit 1
fi

# ログファイルからGETメソッドで取得されたファイルのアクセス回数を集計する
# awkコマンドでファイルを取り出し、sort  uniq でカウント後にソートする
awk '$6=="\"GET {print $7}' "$logfile" | sort | uniq -c | sort -nr
