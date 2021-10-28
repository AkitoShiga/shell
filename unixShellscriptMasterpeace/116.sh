#!/bin/bash

# ディスクの容量監視

# 閾値
used_limit=90
# dfコマンドの出力結果一時ファイル名
tmpfile="df.tmp.$$"

# dfコマンドでディスク使用量を表示
df -P | awk 'NR >= 2 {print $5,$6}' > "$tmpfile"

# dfコマンド出力の一時ファイルから使用率を確認する
while read percent moutpoint

do
    # 31%を31に末尾の％を解除
    percent_val=${percent%\%}

    if [ "$percent_val" -ge "$used_limit" ]; then
        date_str=$(date '+%Y/%m/%d %H:%M:%S')

        echo "[$date_str] Disk Capacity Alert: $moutpoint ($percent used)"
        /home/user1/bnin/alert.sh
    fi
done < "$tmpfile"

rm -f "$tmpfile"
