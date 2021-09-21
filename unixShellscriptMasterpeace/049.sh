#!/bin/bash

# 二重起動が可能な一時ファイルの作成
# スクリプトを同時実行させる時に一時ファイルを重複させない


# $$でPIDを表示
tempfile="temp.$$"

date > $tempfile
sleep 10

cat $tempfile

rm -f $fmpfile

