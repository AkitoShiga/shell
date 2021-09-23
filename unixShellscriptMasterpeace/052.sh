#!/bin/bash

# 今日が月末か判定する

tommorow=$(date "+%d" -d '1 day')

if [ "$tommorow" = "01" ]; then
    ./mothry_report.sh
fi
