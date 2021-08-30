#!/bin/bash

# ファイルをバックアップする際に日時を入れる

config='test.html'

bak_filename="${config}.$(date '+%Y%m%d')"

# 既に同名のファイルがある場合は秒も入れる
if [ -e "$bak_filename" ]; then
    bak_filename="${config}.$(date '+%Y%m%d%H%M.%S')"
fi

cp -v "$config" "$bak_filename"

