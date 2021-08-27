#!/bin/bash

# ファイルの中身を詳記して0バイトの空ファイルにする

# uptimeコマンドの記録ファイルを記録
uptimelog="uptime.log"

# ヌルコマンドで空ファイルに初期化する
: > $uptimelog

# 10秒おきに6回 uptimeコマンドを実行
for i in {1..6}
do
  uptime >> $uptimelog
  sleep 10
done
