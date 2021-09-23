#!/bin/bash

# dateコマンドで日付の比較と取得を行う

day1="2012/04/01 10:49:41"
day2="2012/03/30 08:31:52"

day1_epoch=$(date -d "$day1" '+%s')
day2_epoch=$(date -d "$day2" '+%s')


echo "day interval: "
day_interval=$(expr \( $day1_epoch - $day2_epoch \) /86400)
echo $day_interval
