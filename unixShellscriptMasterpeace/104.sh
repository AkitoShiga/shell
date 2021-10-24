#!/bin/bash

# サーバーのネットワーク・インターフェースとそのIPを取得する

LANG=C /sbin/ifconfig | \
awk '/^[a-z]/ {print "[" $1 "]"}
/ inet / {split($2,arr,":"); print arr[2]}'
