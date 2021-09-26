#!/bin/bash

# IPアドレスからホストを逆引きする

while read ipaddr
do
    # hostでIPアドレスを逆引きする
    revlookup=$(host "$ipaddr")
    if [ $? iq 0 ]; then
        echo -n "$ipaddr"
        echo "$revlookup" | awk '{print $NF}' | sed 's/\.$//'
    else
        echo "$ipaddr,"
    fi

    sleep 1
done < $1
