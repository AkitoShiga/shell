#!/bin/bash

# ホスト名からIPアドレスを取得する

fqdn="www.google.com"

echo "Address of $fqdn"

host $fqdn | \
awk '/has address/ {print $NF,"IPv4"}'\
'/has IPv6 address/ {print $NF,"IPv6"}'
