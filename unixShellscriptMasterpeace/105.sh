#!/bin/bash

# サーバーに作成済みのユーザーアカウント一覧を取得する

filename="/etc/passwd/"

# ここのgrepはコメントの除外用
grep -v "^#" "$filename" | cut -f 1 -d ":"
# awk -F: {print $1} これと同義
