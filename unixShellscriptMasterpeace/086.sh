#!/bin/bash

# 現在の実行状態を出力する

# couter
cout=0

server="localhost"

# シグナルUSR1にトラップを設定 現在の $coutを表示する
trap '"echo Try Count: $conut"' USR1

while [ "$conut" -le 1000 ]
do
    count=$(expr $count + 1)
    nc -zv "$server" 80
    sleep 1
done


