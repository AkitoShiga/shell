#!/bin/bash

# 前月のログファイルを一括でダウンロードする

logdir="/var/log/myapp"

thismonth=$(date '+%Y/%m/15 00:00:00')

last_YYYYMM=$(date -d "$thismonth -1 month ago" '+%Y%m')

tar cvf ${last_YYYYMM}.tar ${logdir}/access.log-${last_YYYYMM}*
