#!/bin/bash

# カレンダーで選択した特定の日付のログを削除する

LOG_DIR=/myapp/ap1/log

# dialogコマンドでカレンダー出力
# 選択日付は標準エラー出力に出るため、一時ファイルへリダイレクトする
dialog --calendar "Select Date" 2 60 2> cal.tmp

# 出力結果の整形
date_str=$(awk -F / '{print $3$2$1}' cal.tmp)

# キャンセルされた場合はtempを削除して終了
if [ -z "$date_str" ]; then
  rm -f cal.tmp
  exit
fi

rm -i ${LOG_DIR}/app_log.$date_str

# tempを削除する
rm -f cal.tmp
