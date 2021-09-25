#!/bin/bash

# pingで特定ホストへの応答平均時間を取得する

ipaddr="192.168.0.1"
count=10

echo "ping to $ipaddr"
echo "Ping count $count"
echo "ping average[ms]"

ping -c $count $ipaddr > ping.$$

sed -n "s/^.*time=\(.*\) ms/\1/p" ping.$$ |\
    awk '{sum+=$1} END{print sum/NR}'
    # sumに一行目を足していって行数で割ってる

rm -f ping.$$
