#!/bin/bash

# 多数のホスト宛にpingを投げる際に並列して実行する
ping -c 6 localhost > host1.log &
ping -c 6 localhost > host2.log &
ping -c 6 localhost > host3.log &

# ここで動機をとっている
wait

cat hos1.log host2.log host3.log
