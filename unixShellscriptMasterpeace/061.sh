#!/bin/bash

# サーバーの特定のポートへ通信できるか

ipaddr="192.168.2.52"
faillog="fail-port.log"

for port in 80 2222 8080
do
    nc -w 5 -z $ipaddr $port
    if [ $? -ne 0 ]; then
        echo "Faild at port : $port" >> "$faillog"
    fi
done
