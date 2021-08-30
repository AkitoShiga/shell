#!/bin/bash

# 大量のファイルに一括してコマンドを実行

logdir="./"

# 拡張子.logのファイルから"ERROR"という文字列を検索
# xargs を使う事で、引数の上限値エラーを回避する
find $logdir -name "*.log" -print | xargs grep "ERROR" /dev/null


