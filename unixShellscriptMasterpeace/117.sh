#!/bin/bash

# メモリスワップ監視

swapcount_limit=10

# vmstatコマンドの出力からスワップインスワップアウト値を取得する
swapcount=$(vmstat 1 6 | awk 'NR >= 4 {sum += $7 + $8} END{print sum}')

# スワップ回数が閾値を超えていれば警告
if [ "$swapcount" -ge "$swapcount_limit" ]; then
    date_str=$(date)

    echo "[$date_str] Swap Alert: $swapcont (si+so)"
    /home/user1/bin/alert.sh
fi

