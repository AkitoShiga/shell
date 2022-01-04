#!/bin/bash

# ログ出力を監視特定の文字列があれば出力

logfile="/var/log/myapp/application.log"

tail -F -n 0 "$logfile" |\
while read line
do
  case "$line" in
    *"File Not Found"*)
    echo "File Not Found  $line"
    ;;
    *"Application Error"*)
    echo "Error $line"
    ;;
 esac
done
