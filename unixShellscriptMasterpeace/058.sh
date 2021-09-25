#!/bin/bash

# arpテーブルから指定IPに対応するアドレスを表示する

ipaddr="192.168.10.1"
macaddr=$(arp -an | awk "/\($ippaddr\)/ {print $4}")

if [ -n "$macaddr" ]; then
    echo "$ipaddr -> $macaddr"
else
   echo "$ipaddr は ARPにありません"
fi
