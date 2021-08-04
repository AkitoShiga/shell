#!/bin/bash

count=0
# キーボードによる割り込みが合った時に発火する
# trap -> 処理したい内容 -> 処理したいシグナル
# exitを記載しないと終了しないので注意
trap ' echo
       echo "Try count: $count"
       exit ' INT
while :
do
  curl -o /dev/null $1
  count=$(expr $count + 1)
  sleep 5
done