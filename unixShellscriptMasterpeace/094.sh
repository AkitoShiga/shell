#!/bin/bash

# コマンドがどこかで失敗したらそこで終了してスクリプトの誤作動を防ぐ
set -e

# 削除ファイルの格納ディレクトリ
deldir="/var/log/myapp-"

cd "$deldir"
rm -f *.log
