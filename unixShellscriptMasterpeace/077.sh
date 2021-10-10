#!/bin/bash

# ログファイルから特定のステータスコードを返しているものだけを取得する

logfile="access_log"

# ログファイルが存在しなければ終了
if [ ! -f "$logfile" ]; then
    echo "no file" >&2
    exit 1
fi

# ログファイルからHTTPステータスを外部ファイルへ出力
awk '$(NF-1)==404 {print $7}' "$logfile" > "${logfile}.404"
