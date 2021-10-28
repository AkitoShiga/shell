#!/bin/bash

# cpuの監視
idle_limi=10.0

cpu_idle-$(mpstat 1 5 | tail -n 1 | awk '{print $NF}')

is_alert=$(echo "$cpu_idle < $idle_limit" | bc)

if [ "$is_alert" -eq 1 ]; then
    date_str=$(date)

    echo "[$date_str] CPU %idle Alert: $cpu_idle(%)"
    /home/user1/bin/alert.sh
fi
